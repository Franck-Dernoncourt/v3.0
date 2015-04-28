/*
  mimic2v30_beta.sql

  Created on   : Mar 2015 by Mornin Feng
  Last updated :
     $Author: Mornin Feng $
     $Date: 2014 March 1st  $
     $Rev: $

Must run from mimic2v30b
Recreating mimic2v30 with new updates

*/
/***************    additives  ********************/

--conversion of time zones
--drop table mimic2v30b_utc.additives;
create table mimic2v30b_utc.additives as
select 
SUBJECT_ID,
ICUSTAY_ID,
ORDERID,
ITEMID,
LABEL,
IOITEMID,
IOITEMLABEL,
--,cast(charttime AT TIME ZONE 'UTC' as timestamp) as CHARTTIME,
case when STARTTIME is null then cast(charttime AT TIME ZONE 'UTC' as timestamp)
    else cast(STARTTIME AT TIME ZONE 'UTC' as timestamp)
    end as STARTTIME,
cast(ENDTIME AT TIME ZONE 'UTC' as timestamp) as ENDTIME,
ELEMID,
CGID,
CUID,
VALUE,
UOM,
IOITEMVALUE,
IOITEMUOM,
SOURCE_FLG,
ADDITIVESDATAID
from mimic2v30b.additives;

/***************    admissions  ********************/

--conversion of time zones
--drop table mimic2v30b_utc.admissions;
create table mimic2v30b_utc.admissions as
select
HADM_ID,
SUBJECT_ID,
ADMIT_DT,
cast(ADMIT_TIME AT TIME ZONE 'UTC' as timestamp) as ADMIT_TIME,
DISCH_DT,
cast(DISCH_TIME AT TIME ZONE 'UTC' as timestamp) as DISCH_TIME,
ADM_DIAGNOSIS,
FIRST_SERVICE,
LAST_SERVICE,
ADMISSIONSDATAID
from mimic2v30b.admissions;


/***************    censusevents  ********************/

-- tomp: Mornin's version used (not recreated)
create table mimic2v30b_utc.censusevents as
select 
CENSUS_ID
,SUBJECT_ID
,ICUSTAY_ID
,cast(INTIME AT TIME ZONE 'UTC' as timestamp) as INTIME
,cast(OUTTIME AT TIME ZONE 'UTC' as timestamp) as OUTTIME
,CUID
,LOS
,DESTCAREUNIT
,DISCHSTATUS
,CENSUSEVENTSDATAID
from mimic2v30b.censusevents;


/***************    chartevents  ********************/
create table mimic2v30b_utc.chartevents as
select
SUBJECT_ID
,HADM_ID
,ICUSTAY_ID
,ITEMID
,LABEL
,cast(TIME AT TIME ZONE 'UTC' as timestamp) as TIME
,ELEMID
,cast(VALIDATIONTIME AT TIME ZONE 'UTC' as timestamp) as KEYINTIME
,CGID
,CUID
,VALUE1
,VALUE1NUM
,VALUE1UOM
,COMMENTS
,VALUE2
,VALUE2NUM
,VALUE2UOM
,RESULTSTATUS
,STOPPED
,WARNING
,ERROR
,CHARTEVENTSDATAID
from mimic2v30b.chartevents;

/***************    cptevents  ********************/
create table mimic2v30b_utc.cptevents as
select
SUBJECT_ID,
HADM_ID,
CPT_CD,
CPTEVENTSDATAID
from mimic2v30b.cptevents;

/***************    D_CAREGIVERS  ********************/
create table mimic2v30b_utc.D_CAREGIVERS as
select
CGID,
CG_UNIQUEID,
LABEL,
DESCRIPTION,
CGID_STATUS,
D_CAREGIVERSDATAID
from mimic2v30b.D_CAREGIVERS;

/***************    D_CAREUNITS  ********************/
create table mimic2v30b_utc.D_CAREUNITS as
select
CUID,
LABEL,
D_CAREUNITSDATAID
from mimic2v30b.D_CAREUNITS;

/***************    d_items  ********************/
create table mimic2v30b_utc.d_items as
select
ITEMID,
LABEL,
ABBREVIATION,
ORIGIN,
CODE,
CATEGORY,
UNITID,
UNITNAME,
TYPE,
DESCRIPTION,
LOWNORMALVALUE,
HIGHNORMALVALUE,
ALLERGYACTION,
LOINC_CODE,
LOINC_DESCRIPTION,
OLD_LABITEMID,
OLD_TEST_NAME,
OLD_LOINC_CODE,
D_ITEMSDATAID
from mimic2v30b.d_items;

/***************    D_PATIENTS  ********************/
create table mimic2v30b_utc.D_PATIENTS as
select
SUBJECT_ID,
SEX,
DOB,
DOD,
HOSPITAL_EXPIRE_FLG,
ZIPCODE,
D_PATIENTSDATAID
from mimic2v30b.D_PATIENTS;

/***************    D_UNITS  ********************/
create table mimic2v30b_utc.D_UNITS as
select
UNITID,
UNITNAME,
MULTIPLIER,
ADDITION,
ISBASEUNIT,
ISRELATIONAL,
ISTIME,
ISVOLUME,
CATEGORY,
D_UNITSDATAID
from mimic2v30b.D_UNITS;

/***************    DEMOGRAPHIC_DETAIL  ********************/
create table mimic2v30b_utc.DEMOGRAPHIC_DETAIL as
select
SUBJECT_ID,
HADM_ID,
MARITAL_STATUS_ITEMID,
MARITAL_STATUS_DESCR,
ETHNICITY_ITEMID,
ETHNICITY_DESCR,
OVERALL_PAYOR_GROUP_ITEMID,
OVERALL_PAYOR_GROUP_DESCR,
RELIGION_ITEMID,
RELIGION_DESCR,
ADMISSION_TYPE_ITEMID,
ADMISSION_TYPE_DESCR,
ADMISSION_SOURCE_ITEMID,
ADMISSION_SOURCE_DESCR,
DEMOGRAPHIC_DETAILDATAID
from mimic2v30b.DEMOGRAPHIC_DETAIL;

/***************    DRGEVENTS  ********************/
create table mimic2v30b_utc.DRGEVENTS as
select
SUBJECT_ID,
HADM_ID,
ITEMID,
TYPE,
CODE,
DESCRIPTION,
COST_WEIGHT,
DRGEVENTSDATAID
from mimic2v30b.DRGEVENTS;

/***************    ICD9  ********************/
create table mimic2v30b_utc.ICD9 as
select
SUBJECT_ID,
HADM_ID,
SEQUENCE,
CODE,
DESCRIPTION,
ICD9DATAID
from mimic2v30b.ICD9;

/***************    ICUSTAY_DAYS  ********************/
create table mimic2v30b_utc.ICUSTAY_DAYS as
select
ICUSTAY_ID,
SUBJECT_ID,
SEQ,
cast(BEGINTIME AT TIME ZONE 'UTC' as timestamp) AS STARTTIME,
cast(ENDTIME AT TIME ZONE 'UTC' as timestamp) AS ENDTIME,
FIRST_DAY_FLG,
LAST_DAY_FLG,
ICUSTAY_DAYSDATAID
from mimic2v30b.ICUSTAY_DAYS;

/***************    ICUSTAYEVENTS  ********************/
create table mimic2v30b_utc.ICUSTAYEVENTS as
select
ICUSTAY_ID,
SUBJECT_ID,
cast(INTIME AT TIME ZONE 'UTC' as timestamp) AS INTIME,
cast(OUTTIME AT TIME ZONE 'UTC' as timestamp) AS OUTTIME,
LOS,
FIRST_CAREUNIT,
LAST_CAREUNIT,
ICUSTAYEVENTSDATAID
from mimic2v30b.ICUSTAYEVENTS;

/***************    IOEVENTS  ********************/
create table mimic2v30b_utc.IOEVENTS as
select
SUBJECT_ID,
ICUSTAY_ID,
ORDERID,
ITEMID,
LABEL,
--,cast(charttime AT TIME ZONE 'UTC' as timestamp) as CHARTTIME 
ELEMID,
ALTID,
case when STARTTIME is null then cast(charttime AT TIME ZONE 'UTC' as timestamp)
  else cast(STARTTIME AT TIME ZONE 'UTC' as timestamp) 
  end as STARTTIME,
cast(ENDTIME AT TIME ZONE 'UTC' as timestamp) as ENDTIME,
cast(REALTIME AT TIME ZONE 'UTC' as timestamp) as KEYINSTARTTIME,
CGID,
CUID,
VALUE,
UOM,
UNITSHUNG,
UNITSHUNGUOM,
NEWBOTTLE,
STOPPED,
ESTIMATE,
IOEVENTSDATAID
from mimic2v30b.IOEVENTS;

/***************    labevents  ********************/
create table mimic2v30b_utc.labevents as
select
SUBJECT_ID,
HADM_ID,
ITEMID,
cast(CHARTTIME AT TIME ZONE 'UTC' as timestamp) as TIME,
TEST_NAME,
VALUE,
VALUENUM,
VALUEUOM,
FLAG,
FLUID,
CATEGORY,
LOINC_CODE,
LABEVENTSDATAID
from mimic2v30b.labevents;

/***************    MEDEVENTS  ********************/
create table mimic2v30b_utc.MEDEVENTS as
select
SUBJECT_ID,
ICUSTAY_ID,
ORDERID,
ITEMID,
LABEL,
SOLITEMID,
SOLITEMLABEL,
--,cast(charttime AT TIME ZONE 'UTC' as timestamp) as CHARTTIME 
ELEMID,
case when STARTTIME is null then cast(charttime AT TIME ZONE 'UTC' as timestamp)
  else cast(STARTTIME AT TIME ZONE 'UTC' as timestamp) 
  end as STARTTIME,
cast(ENDTIME AT TIME ZONE 'UTC' as timestamp) as ENDTIME,
cast(REALTIME AT TIME ZONE 'UTC' as timestamp) as KEYINSTARTTIME,
VALUE,
UOM,
SOLITEMVALUE,
SOLITEMUOM,
CGID,
CUID,
STOPPED,
MEDEVENTSDATAID
from mimic2v30b.MEDEVENTS;

/***************    MICROBIOLOGYEVENTS  ********************/
create table mimic2v30b_utc.MICROBIOLOGYEVENTS as
select 
SUBJECT_ID,
HADM_ID,
TIME AS "DATE",
SPEC_TYPE_CD,
SPEC_ITEMID,
SPEC_TYPE_DESC,
ORG_CD,
ORG_ITEMID,
ORG_NAME,
ISOLATE_NUM,
AB_CD,
AB_ITEMID,
AB_NAME,
DILUTION_AMOUNT,
DILUTION_COMPARISON,
INTERPRETATION,
MICROBIOLOGYEVENTSDATAID
from mimic2v30b.MICROBIOLOGYEVENTS;

/***************    NOTEEVENTS  ********************/
create table mimic2v30b_utc.NOTEEVENTS as
select 
REC_ID
,SUBJECT_ID
,HADM_ID
,ICUSTAY_ID
,ELEMID
,cast(CHARTTIME AT TIME ZONE 'UTC' as timestamp) as TIME
,cast(REALTIME AT TIME ZONE 'UTC' as timestamp) KEYINTIME
,CGID
,CORRECTION
,CUID
,CATEGORY
,TITLE
,TEXT
,EXAM_NAME
,PATIENT_INFO
,NOTEEVENTSDATAID
from mimic2v30b.NOTEEVENTS;

/***************    ORDERENTRY  ********************/
create table mimic2v30b_utc.ORDERENTRY as
select 
ORDERID,
LINKORDERID,
SUBJECT_ID,
ICUSTAY_ID,
CGID,
ISSUEDATE,
ORDERCATEGORY,
PATIENTWEIGHT,
ISOPENBAG,
CANCELREASON,
COMMENTS,
LOCATIONNAME,
ROUTE,
DURATION,
DURATIONUOM,
TOTALVOLUME,
TOTALVOLUMEUOM,
CONTINUEINNEXTDEPT,
ORDERENTRYDATAID
from mimic2v30b.ORDERENTRY;

/***************    POE_MED_ORDER  ********************/
-- tomp: Mornin's version used (not recreated)
-- remove drug_name_poe column
-- converted timezone and renamed start_dt and stop_dt to starttime and endtime
create table mimic2v30b_utc.POE_MED_ORDER as
select 
SUBJECT_ID,
HADM_ID,
ICUSTAY_ID,
cast(START_DT AT TIME ZONE 'UTC' as timestamp) STARTTIME,
cast(STOP_DT AT TIME ZONE 'UTC' as timestamp) ENDTIME,
DRUG_TYPE,
DRUG,
DRUG_NAME_GENERIC,
FORMULARY_DRUG_CD,
GSN,
NDC,
PROD_STRENGTH,
DOSE_VAL_RX,
DOSE_UNIT_RX,
FORM_VAL_DISP,
FORM_UNIT_DISP,
ROUTE,
POE_MED_ORDERDATAID
from mimic2v30b.POE_MED_ORDER;

/***************    PROCEDUREEVENTS  ********************/
-- remove SEQUENCE_NUM column
-- converted timezone 
create table mimic2v30b_utc.PROCEDUREEVENTS as
select 
SUBJECT_ID,
HADM_ID,
ORDERID,
ORDERCATEGORYNAME,
ITEMID,
LABEL,
 case when proc_dt is null then cast(starttime as date) else proc_dt end as proc_dt,
--,SEQUENCE_NUM
cast(STARTTIME AT TIME ZONE 'UTC' as timestamp) as STARTTIME,
cast(ENDTIME AT TIME ZONE 'UTC' as timestamp) as ENDTIME,
CGID,
PROCEDUREEVENTSDATAID
from mimic2v30b.PROCEDUREEVENTS;

/***************    TOTALBALEVENTS  ********************/

with temp as
(select distinct
a.subject_id
, a.icustay_id
--, a.charttime
--, b.charttime
, b.TOTALBALEVENTSDATAID
from MIMIC2V30B.totalbalevents a
join MIMIC2V30B.totalbalevents b 
  on a.subject_id=b.subject_id 
  and a.cumitemid=b.cumitemid 
  and a.icustay_id is not null
  and b.icustay_id is null
  and b.charttime <= a.charttime+1
)

, totalbalevents_new as
(select
a.SUBJECT_ID
,case when a.ICUSTAY_ID is null then b.ICUSTAY_ID else a.ICUSTAY_ID end as ICUSTAY_ID
,a.CHARTTIME
,a.ELEMID
,a.REALTIME
,a.CGID
,a.CUID
,a.ITEMID
,a.LABEL
,a.VOLUME
,a.CUMITEMID
,a.CUMLABEL
,a.CUMVOLUME
,a.UOM
,a.ACCUMPERIOD
,a.APPROX
,a.RESET
,a.STOPPED
,a.TOTALBALEVENTSDATAID
from MIMIC2V30B.totalbalevents a
left join temp b on a.TOTALBALEVENTSDATAID=b.TOTALBALEVENTSDATAID)

--select count(*) from totalbalevents_new where icustay_id is null;
-- select * from totalbalevents_new

create table mimic2v30b_utc.TOTALBALEVENTS as (
select 
SUBJECT_ID,
ICUSTAY_ID,
cast(CHARTTIME AT TIME ZONE 'UTC' as timestamp) as TIME,
--,ELEMID,
cast(REALTIME AT TIME ZONE 'UTC' as timestamp) as KEYINTIME,
CGID,
CUID,
ITEMID,
case when LABEL is null then CUMLABEL else LABEL end as LABEL,
VOLUME,
CUMITEMID,
--,CUMLABEL,
CUMVOLUME,
UOM,
ACCUMPERIOD,
APPROX,
RESET,
STOPPED,
TOTALBALEVENTSDATAID
from mimic2v30b.TOTALBALEVENTS);

/***************    lcp_ventilation  ********************/
create table mimic2v30b_utc.ventilation as
select 
from mimic2v30b.ventilation;

/***************    lcp_COMORBIDITY_SCORES  ********************/
create table mimic2v30b_utc.lcp_COMORBIDITY_SCORES as
select 
from mimic2v30b.lcp_COMORBIDITY_SCORES;

/***************    lcp_daily_sofa  ********************/
create table mimic2v30b_utc.lcp_daily_sofa as
select 
from mimic2v30b.lcp_daily_sofa;

