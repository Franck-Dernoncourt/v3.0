---
layout: page
title: "ADMISSIONS"
category: dat
date: 2015-04-22 12:48:04
order: 2
---

#### ```ADMISSIONS``` table

The source data for the ```ADMISSIONS``` table comes from the BIDMC
admission/discharge/transfer data set, which included hospital
admissions and discharges for all patients from 2 January 2001 to
31 October 2012.

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
```SUBJECT_ID``` | NUMBER | N | Foreign Key, referring to ```D_PATIENTS``` table
```ADMIT_DT``` | DATE | N | Admission Date
```ADMIT_TIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Detailed admission time for new patients
```DISCH_DT``` | DATE | N | Discharge date
```DISCH_TIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Detailed discharge time for new patients
```ADM_DIAGNOSIS``` | VARCHAR2(250) | Y | Diagnosis on admission
```FIRST_SERVICE``` | VARCHAR2(4) | Y | First service unit
```LAST_SERVICE``` | VARCHAR2(4) | Y | Last service unit
```ADMISSIONSDATAID``` | NUMBER(38) | Y | Unique row identifier

*Table: Description of the columns in the ```ADMISSIONS``` table*



