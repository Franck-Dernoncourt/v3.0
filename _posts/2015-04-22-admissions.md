---
layout: page
title: "Admissions"
category: dat
date: 2015-04-22 12:48:04
order: 4
---

### 2.4 ```Admissions```, ```Censusevents```, ```ICUStayevents``` and ```ICUStay_days``` tables

#### 2.4.1 ```ADMISSIONS``` table

The source data for the ```ADMISSIONS``` table comes from the BIDMC
admission/discharge/transfer data set, which included hospital
admissions and discharges for all patients from 01/02/2001 to
10/31/2012.

The ```ADMISSIONS``` table in MIMIC2V26 has a date range of 3 April 2001 to
16 September 2008. As mentioned earlier, the date range for new patient
admissions from MetaVision database is 12 July 2007 - 25 September 2012. Therefore, some ICU patients in the MetaVision adult patients table have been
included in the MIMIC2V26 database.

The data mapping and merging process between MIMIC-II v2.6 and the
MetaVision Database started by filtering out new hospital admissions
first; among the new hospital admissions, there are old patients and new
patients. For old patients, we needed to map to the existing
```SUBJECT_ID```; for new patients, we generated new ```SUBJECT_ID```s.

Some changes to the ```ADMISSIONS``` table in v3.0 are as follows:

1.  For new admissions, the ```ADMIT_DT``` and ```DISCH_DT``` in the v3.0 ```ADMISSIONS``` table contain date and time information; data coming from MIMIC-II v2.6 only contains date information.
2.  Three new columns were added to this table – ‘```ADM_DIAGNOSIS```’, ‘```FIRST_SERVICE_UNIT```’, ‘```LAST_SERVICE_UNIT```’

Column name | Data type | New Column | Remark
--- | --- | --- | ---
```HADM_ID ``` | NUMBER| N | Primary Key
```SUBJECT_ID``` | NUMBER | N | Foreign Key – referring to ```D_PATIENTS``` table
```ADMIT_DT``` | DATE | N | Admission Date
```ADMIT_TIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Detailed admission time for new patients
```DISCH_DT``` | DATE | N | Discharge date
```DISCH_TIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Detailed discharge time for new patients
```ADM_DIAGNOSIS``` | VARCHAR2(250) | Y | Diagnosis on admission
```FIRST_SERVICE``` | VARCHAR2(4) | Y | First service unit
```LAST_SERVICE``` | VARCHAR2(4) | Y | Last service unit
```ADMISSIONSDATAID``` | NUMBER(38) | Y | Unique row Identifier

*Table: Description of the columns in the ```ADMISSIONS``` table*

#### 2.4.2 ```CENSUSEVENTS``` table

The ```CENSUSEVENTS``` table tracks the changes of beds or care units and
transfer of patients. For MIMIC2V30, this table is generated based on
the ```PATIENTTRACKING``` table in the MetaVision database.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
CENSUS\_ID | NUMBER | N | Primary key
```SUBJECT_ID``` | NUMBER | N | Foreign Key – referring to ```D_PATIENTS``` table
ICUSTAY\_ID | NUMBER(7) | N | Foreign Key – referring to ```ICUEVENTS``` table
INTIME | TIMESTAMP(6) WITH TIME ZONE | N | ICU admission time
OUTTIME | TIMESTAMP(6) WITH TIME ZONE | N | ICU discharge time
CUID | NUMBER(7) | N | Foreign key – referring to ```D_CAREUNITS``` table
LOS | NUMBER | N | ICU length of stay in minutes
DESTCAREUNIT | NUMBER(7) | N | Destination care unit
DISCHSTATUS | VARCHAR2(20) | N | Discharge status
CENSUSEVENTSDATAID | NUMBER | Y | Unique row Identifier

*Table: Description of the columns in the ```CENSUSEVENTS``` table*

#### 2.4.3 ```ICUSTAYEVENTS``` table

The ```ICUSTAYEVENTS``` table is generated from the ```CENSUSEVENTS``` table. An
```ICUSTAY_ID``` is generated to mark any new ICUSTAY events for patients. In
many cases, patients can be in and out of the ICU care units multiple
times during one hospital admission. For these cases, we set the
following rule regarding ```ICUSTAY_ID```s:

**For patients transferred out of ICU units but re-admitted to the same ICU care unit within 24 hours, it is considered as one ICUSTAY event with the same ```ICUSTAY_ID```. However, if the patient was re-admitted back to the same ICU care unit after 24 hours, it is considered as a new ICUSTAY event and is assigned a new ```ICUSTAY_ID```**.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```ICUSTAY_ID``` | NUMBER(7) | N | Primary key
```SUBJECT_ID``` | NUMBER | N | Foreign Key – referring to ```D_PATIENTS``` table
```INTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | ICU admission time
```OUTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | ICU discharge time
```LOS``` | NUMBER | N | ICU length of stay in minutes
```FIRST_CAREUNIT``` | NUMBER | N | First care unit
```LAST_CAREUNIT``` | NUMBER | N | Last care unit
```ADMISSIONSDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the columns in the ICUStayevents table*

#### 2.4.4 ```ICUSTAY_DAYS``` table

The ```ICUSTAY_DAYS``` table is generated from the ```ICUSTAYEVENTS``` table; it basically listed the ICUSTAYEVENTS by days and marked the first and last day of ICUSTAY.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```ICUSTAY_ID``` | NUMBER(7) | N | Primary key
```SUBJECT_ID``` | NUMBER(7) | N | Foreign Key – referring to ```D_PATIENTS``` table
```SEQ``` | NUMBER(7) | N | Day number of the ICU stay
```BEGINTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Start time of the ICU stay day
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | End time of the ICU stay day
```FIRST_DAY_FLG``` | CHAR(1) | N | The first day of the ICU stay (Y/N)
```LAST_DAY_FLG``` | CHAR(1) | N | The last day of the ICU stay (Y/N)
```ICUSTAYDAYSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ```ICUStay_days``` table*


