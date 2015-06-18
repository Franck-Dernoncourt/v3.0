/******************************
**
** File: cohort_COPD_list.sql   
** Desc: Lists HADM_IDs belonging to the COPD (Chronic Obstructive Pulmonary 
**       Disease) cohort 
** Auth: [Cohort definition] Anuj Mehta 
**       [Implementation] Franck Dernoncourt <francky@mit.edu> and Albert Young
** Date: 2015-06-12
** Impl: Relies on ICD-9 codes, which can be found in the ICD9 table.
** Time: Less than 2 seconds on Tesla.
**
**************************
** Change History
**************************
** PR   Date	     Author           Description	
** --   --------   --------------   ------------------------------------
** 
*******************************/

SELECT UNIQUE t1.HADM_ID admission_id, 
      TO_CHAR(ADMISSIONS.ADMIT_DT,'YYYY-MM-DD HH24:MI:SS') admission_timestamp, 
      D_PATIENTS.HOSPITAL_EXPIRE_FLG, 
      TO_CHAR(D_PATIENTS.DOD,'YYYY-MM-DD') dod, 
      TO_CHAR(ADMISSIONS.DISCH_DT,'YYYY-MM-DD HH24:MI:SS') discharge_timestamp
FROM MIMIC2V30.ICD9  t1,
     MIMIC2V30.ICD9  t2, -- self-join
     MIMIC2V30.ADMISSIONS,
     MIMIC2V30.D_PATIENTS
WHERE t1.SUBJECT_ID = t2.SUBJECT_ID
AND t1.HADM_ID = t2.HADM_ID
AND D_PATIENTS.SUBJECT_ID = t1.SUBJECT_ID
AND t1.HADM_ID = ADMISSIONS.HADM_ID
AND CAST(ADMISSIONS.ADMIT_DT AS DATE) - D_PATIENTS.DOB > 18 * 365 -- patients aged 18 and older
AND 
(
-- Case 1: Principal Diagnosis COPD (491.x, 492.x, 496.x)
(t1.SEQUENCE = 1 AND REGEXP_LIKE(t1.code, '49[1,2,6].*'))
-- Case 2: Principal Diagnosis ARF (518.81) + Secondary Diagnosis COPD (491.x, 492.x, 496.x)
OR (t1.SEQUENCE = 1 AND t1.code = '518.81' AND (REGEXP_LIKE(t2.code, '49[1,2,6].*')))
)
AND NOT EXISTS (
  SELECT *
  FROM MIMIC2V30.ICD9  t3
  WHERE t3.SUBJECT_ID = t1.SUBJECT_ID
  AND t3.HADM_ID = t1.HADM_ID
  AND
  (
  -- Exclusion 1: Secondary acute HF (428.11, 428.23, 428.31, 428.33, 428.41, 428.43)
     t3.code IN ('428.11', '428.23', '428.31', '428.33', '428.41', '428.43')
  -- Exclusion 2: Secondary acute MI (410.x)
  OR t3.code LIKE '410%'
  -- Exclusion 3: Secondary acute asthma (493.01, 493.02, 493.11, 493.12, 493.22, 493.91, 493.92)
  OR (t3.code IN ('493.01','493.02','493.11','493.12','493.22','493.91','493.92'))
  -- Exclusion 4: Secondary sepsis (038.x, 995.91, 995.92, 785.52)
  OR (t3.code LIKE '038.%' OR t3.code IN ('995.91','995.92','785.52'))
  -- Exclusion 5: Secondary bacteremia (790.7)
  OR t3.code = '790.7'
  -- Exclusion 6: Secondary fungemia (117.9, 112.5)
  OR t3.code IN ('117.9','112.5')
  )
)
ORDER BY admission_timestamp ASC
;