/******************************
**
** File: cohort_HF_list.sql   
** Desc: Lists HADM_IDs belonging to the HF (Heart Failure) cohort.
** Auth: [Cohort definition] Anuj Mehta 
**       [Implementation] Franck Dernoncourt <francky@mit.edu> and Albert Young
** Date: 2015-06-12
** Impl: Relies on ICD-9 codes, which can be found in the ICD9 table.
** Time: 5 seconds on Tesla.
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
WHERE D_PATIENTS.SUBJECT_ID = t1.SUBJECT_ID
AND t1.HADM_ID = t2.HADM_ID
AND t1.HADM_ID = ADMISSIONS.HADM_ID
AND CAST(ADMISSIONS.ADMIT_DT AS DATE) - D_PATIENTS.DOB > 18 * 365 -- patients aged 18 and older
AND 
(
-- Case 1: Principal Diagnosis HF (428.x)
(t1.SEQUENCE = 1 AND t1.code LIKE '428%')
-- Case 2: Principal Diagnosis ARF (518.81) + Secondary Diagnosis HF (428.x)
OR (t1.SEQUENCE = 1 AND t1.code = '518.81' AND t2.code LIKE '428%')
-- Case 3: Principal Diagnosis acute MI (410.x) + Secondary Diagnosis HF (428.x)
OR (t1.SEQUENCE = 1 AND t1.code LIKE '410%' AND t2.code LIKE '428%')
)
AND NOT EXISTS (
  SELECT *
  FROM MIMIC2V30.ICD9  t3
  WHERE t3.SUBJECT_ID = t1.SUBJECT_ID
  AND t3.HADM_ID = t1.HADM_ID
  AND
  (
    -- Exclusion 1: Secondary acute COPD (491.21)
       t3.code = '491.21'
    -- Exclusion 2: Secondary acute asthma (493.01, 493.02, 493.11, 493.12, 493.22, 493.91, 493.92)
    OR (t3.code IN ('493.01','493.02','493.11','493.12','493.22','493.91','493.92'))
    -- Exclusion 3: Secondary sepsis (038.x, 995.91, 995.92, 785.52)
    OR (t3.code LIKE '038.%' OR t3.code IN ('995.91','995.92','785.52'))
    -- Exclusion 4: Secondary bacteremia (790.7)
    OR t3.code = '790.7'
    -- Exclusion 5: Secondary fungemia (117.9, 112.5)
    OR t3.code IN ('117.9','112.5')
    -- Exclusion 6: Secondary pneumonia (480.x-488.x, 507.x)
    OR (REGEXP_LIKE (t3.code, '48[0-8].*') OR t3.code LIKE '507.%')
    -- Exclusion 7: Secondary ARDS (518.82, 518.5)
    OR t3.code IN ('518.82','518.5')
  )
)
ORDER BY admission_timestamp ASC
;