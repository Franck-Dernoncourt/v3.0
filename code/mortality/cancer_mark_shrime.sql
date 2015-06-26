/*
  cancer_mark_shrime.sql

  Created on   : 24 June 2015 by Tom Pollard
  Last updated :
     $Author: Tom Pollard $
     $Date: 24 June 15 $
     $Rev: $

 Requirements:
 - Valid for MIMIC II database schema version 3.0.
 - Must run on brp2 server
 
 Notes:
 - Data requested by Mark Shrime and Peggy Li
 - *PROVISIONAL RESULTS ONLY*
 - *EXTRACTED FROM BETA VERSION OF MIMIC-II v3.0*
 - Identify patients with cancer/malignancy using Elixhauser comorbidities
 - Focus only on ICUstays added between V2.6 and V3.0
 - Extract the following variables:
    1. Date of admission
    2. Date of death
    3. Death in ICU
    4. Death in Hospital
    5. SOFA on day 1
    6. SOFA on day 2
*/

-- Get comorbidities
WITH comorb AS (
  SELECT c.subject_id, c.hadm_id, i.icustay_id, 
  CASE
    WHEN c.lymphoma = 1 THEN 1
    WHEN c.metastatic_cancer = 1 THEN 1
    WHEN c.solid_tumor = 1 THEN 1
  ELSE 0
  END as cancer
  FROM MIMIC2V30B.LCP_COMORBIDITY_SCORES c
  LEFT JOIN tpollard.map_hadm_icustay i 
  ON c.hadm_id = i.hadm_id
  WHERE i.icustay_id >= 48000
)
-- Get ICU_intime, dob, dod
, demogs AS (
  SELECT p.subject_id, p.sex, p.dob, p.dod, a.intime icu_intime,
  a.icustay_id, a.outtime icu_outtime
  FROM MIMIC2V30B.D_PATIENTS p
  LEFT JOIN MIMIC2V30B.ICUSTAYEVENTS a
  ON p.subject_id = a.subject_id
  WHERE p.subject_id in (select distinct subject_id from comorb)
),
all_data AS (
-- Compute 30 day mortality
SELECT distinct d.subject_id, d.icustay_id,c.hadm_id,
CASE 
  WHEN d.dod IS null THEN 0
  WHEN (d.dod - cast(d.icu_intime as date)) > 30 THEN 0
  WHEN (d.dod - cast(d.icu_intime as date)) <= 30 THEN 1
ELSE null
END as mort_30,
-- round(d.dod - cast(d.intime as date)) as dt_diff,
-- Compute in-ICU mortality
CASE 
  WHEN d.dod BETWEEN cast(d.icu_intime as date)-1 AND cast(d.icu_outtime as date)+1 THEN 1
  ELSE 0
END as mort_icu,
c.cancer, d.icu_intime, d.dod, d.icu_outtime, d.sex, d.dob
, ROW_NUMBER () OVER (PARTITION BY d.subject_id ORDER BY d.icu_intime desc) as rn
from comorb c
left join demogs d
on c.icustay_id = d.icustay_id
order by d.subject_id
)
-- Show the results
SELECT a.subject_id, a.icustay_id, a.hadm_id, a.mort_30, a.mort_icu, 
CASE 
  WHEN a.dod BETWEEN adm.admit_dt-1 AND adm.disch_dt+1 THEN 1
  ELSE 0
END as mort_hosp,
a.dob, a.dod, a.sex,
adm.admit_dt hosp_admit_dt, adm.disch_dt hosp_disch_dt,
a.icu_intime, a.icu_outtime, s.icustay_day, s.sofa_total,
s.respiratory_failure as sofa_resp,s.neurological_score as sofa_neuro, 
s.cardiovascular_score_final as sofa_cardio, s.hepatic_score as sofa_hep,
s.hematologic_score as sofa_hema,s.renal_score as sofa_ren
FROM all_data a
INNER JOIN mimic2v30b.LCP_DAILY_SOFA s
ON a.icustay_id = s.icustay_id
LEFT JOIN mimic2v30b.admissions adm
ON a.hadm_id=adm.hadm_id
WHERE rn = 1
AND s.icustay_day in (1,2)
ORDER BY a.subject_id, s.icustay_day;

