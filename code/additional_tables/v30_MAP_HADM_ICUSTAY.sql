/******************************
**
** File: v30_MAP_HADM_ICUSTAY.sql   
** Desc: Create a table containing the mapping between HADM_ID and ICUSTAY_ID.
** Auth: Franck Dernoncourt <francky@mit.edu> and Albert Young
** Date: 2015-05-24
** Impl: For each HADM_ID, look for ICUSTAY_ID whose INTIME is after ADMIT_DT
**       and OUTTIME is before DISCH_DT. 
**       Caveat: Sometimes the HADM discharge time is slightly before the ICU 
**       outtime, so we allow OUTTIME to occur up to one day after DISCH_DT.
** Time: Less than 2 seconds on Tesla.
**
**************************
** Change History
**************************
** PR   Date	     Author           Description	
** --   --------   --------------   ------------------------------------
** 
*******************************/

DROP TABLE MAP_HADM_ICUSTAY;

CREATE TABLE MAP_HADM_ICUSTAY (
"SUBJECT_ID" NUMBER(7,0), 
"HADM_ID" NUMBER(7,0), 
"ICUSTAY_ID" NUMBER(7,0)
);

INSERT INTO MAP_HADM_ICUSTAY (SUBJECT_ID,HADM_ID,ICUSTAY_ID)
SELECT DISTINCT t1.SUBJECT_ID, t1.HADM_ID, t2.ICUSTAY_ID
FROM MIMIC2V30.ADMISSIONS t1
INNER JOIN MIMIC2V30.ICUSTAYEVENTS t2
ON t1.SUBJECT_ID = t2.SUBJECT_ID
AND t1.ADMIT_DT <= t2.INTIME
-- Sometimes the HADM discharge time is slightly before the ICU outtime, 
-- so we allow OUTTIME to occur up to one day after DISCH_DT:
AND CAST(t2.OUTTIME AS DATE)- CAST(t1.DISCH_DT AS DATE) < 1 
ORDER BY t1.SUBJECT_ID, t1.HADM_ID, t2.ICUSTAY_ID ASC;

COMMIT;

-- 8 hospital admissions were counted twice, 
-- for i.e. for 8 hospital admissions, 2 HADM_IDs were affected instead of 1.
-- https://github.com/mimic2/v3.0/issues/53
-- You might want to get rid of them:
/*
DELETE FROM HADM_ICUSTAY_MAP
WHERE HADM_ICUSTAY_MAP.HADM_ID IN ('30242', '21752', '20653', '33206', '33486', '33766', '16752', '33602');
COMMIT;
*/