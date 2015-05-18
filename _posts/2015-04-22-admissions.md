---
layout: page
title: "ADMISSIONS"
category: dat
date: 2015-04-22 12:48:04
order: 2
---

## ```ADMISSIONS``` table

Source data for the ```ADMISSIONS``` table comes from the BIDMC
admission/discharge/transfer dataset, which includes hospital
admissions and discharges for all patients between 2 January 2001 and
31 October 2012.

The ```ADMISSIONS``` table in MIMIC2V26 has a date range of 3 April 2001 to
16 September 2008. The date range for patient admissions in the MetaVision database is 12 July 2007 to 25 September 2012. Therefore, some patients in the MetaVision table were included in MIMIC2 v2.6.

Initial data mapping and merging between MIMIC-II v2.6 and the MetaVision Database involved filtering out new hospital admissions. Among the new hospital admissions, there were old patients and new patients. For old patients, we needed to map to the existing ```SUBJECT_ID```; for new patients, we generated new ```SUBJECT_ID```s.

Changes to the ```ADMISSIONS``` table in v3.0 include:

- ```ADMIT_DT``` and ```DISCH_DT``` for new admissions include date and time, while data coming from MIMIC-II v2.6 includes only date.
- Three new columns were added: ```ADM_DIAGNOSIS```, ```FIRST_SERVICE_UNIT```, and ```LAST_SERVICE_UNIT```

Column name | Data type | New Column | Remark
--- | --- | --- | ---
```HADM_ID ``` | NUMBER| N | Primary Key
```SUBJECT_ID``` | NUMBER | N | Foreign Key, referring to ```D_PATIENTS``` table
```ADMIT_DT``` | DATE | N | Admission Date
```ADMIT_TIME``` | TIMESTAMP(6) | Y | Detailed admission time for new patients
```DISCH_DT``` | DATE | N | Discharge date
```DISCH_TIME``` | TIMESTAMP(6) | Y | Detailed discharge time for new patients
```ADM_DIAGNOSIS``` | VARCHAR2(250) | Y | Diagnosis on admission
```FIRST_SERVICE``` | VARCHAR2(4) | Y | First service unit
```LAST_SERVICE``` | VARCHAR2(4) | Y | Last service unit
```ADMISSIONSDATAID``` | NUMBER(38) | Y | Unique row identifier


