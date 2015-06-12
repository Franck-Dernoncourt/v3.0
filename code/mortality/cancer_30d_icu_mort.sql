/*
  cancer_30d_icu_mort.sql

  Created on   : 12 June 2015 by Tom Pollard
  Last updated :
     $Author: Tom Pollard $
     $Date: 12 June 15 $
     $Rev: $

 Requirements:
 - Valid for MIMIC II database schema version 3.0.
 - Must run on brp2 server
 
 Notes:
 - Identify patients with cancer/malignancy using Elixhauser comorbidities
 - Focus only on ICUstays added between V2.6 and V3.0
 - Compute 30-day mortality (from ICU admission)
 - Count 30 day survival by ICU admission
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
  left join tpollard.map_hadm_icustay i 
  on c.hadm_id = i.hadm_id
  where i.icustay_id >= 48000
)
-- Get ICU_intime, dob, dod
, demogs AS (
  SELECT p.subject_id, p.sex, p.dob, p.dod,a.intime,
  a.icustay_id, a.outtime
  FROM MIMIC2V30B.D_PATIENTS p
  LEFT JOIN MIMIC2V30B.ICUSTAYEVENTS a
  ON p.subject_id = a.subject_id
  WHERE p.subject_id in (select distinct subject_id from comorb)
),
all_data AS (
-- Calculate 30 day survival
SELECT distinct d.subject_id, d.icustay_id,
CASE 
  WHEN d.dod IS null THEN 0
  WHEN (d.dod - cast(d.intime as date)) > 30 THEN 0
  WHEN (d.dod - cast(d.intime as date)) <= 30 THEN 1
ELSE null
END as mort_30,
round(d.dod - cast(d.intime as date)) as dt_diff,
c.icustay_id icustay_id2, c.cancer, d.intime, d.dod,
d.outtime, d.sex, d.dob
, ROW_NUMBER () OVER (PARTITION BY d.subject_id ORDER BY d.intime desc) as rn
from comorb c
left join demogs d
on c.icustay_id = d.icustay_id
order by d.subject_id
)
-- Show the results
SELECT cancer, sex, mort_30, count(distinct icustay_id) distinct_icustay_id
FROM all_data
GROUP BY sex, cancer, mort_30, rn
having rn = 1
ORDER BY cancer, sex, mort_30;

