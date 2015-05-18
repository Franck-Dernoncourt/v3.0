---
layout: page
title: "D_PATIENTS"
category: dat
date: 2015-04-22 22:45:10
order: 9
---

## ```D_PATIENTS``` table

The source table for new patients added to ```D_PATIENTS``` comes from the
```PATIENTS``` table in the MetaVision (for ICU Adult patients) database; the
date range is 12 July 2012 - 25 September 2012.

The structure of the ```D_Patients``` table in version 3.0 did not change
much, but we did add a new column - the first 3 digits of zip codes.
This information should provide new information for geographic based
studies. Table 2 lists all columns in the ```D_PATIENTS``` table.

In addition to data from source databases and data sets, this table also
incorporates ```DOD``` (date of death) information from social security up to
Feb. 2013.

Another change to this table is that we shifted the ages of all patients
over age 90 to an older age (over 200) for de-identification purposes.
In the old version (2.6), only patients who are alive and over 90 were
shifted. This change is to minimize confusion for users who are
interested in age related studies.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Primary key
```SEX``` | VARCHAR2(1) | N | Gender (M/F)
```DOB``` | DATE | N | Date of birth of the patientcd 
```DOD``` | DATE | N | Date of death of the patient. ```Null``` if alive as of February 2013 (the date of export of social security data)
```HOSPITAL_EXPIRE_FLG``` | VARCHAR2(1) | N | Whether or not the patient died in the hospital
```ZIPCODE``` | VARCHAR2(5) | Y | First three digits of the patient's home zipcode
```D_PATIENTSDATAID``` | NUMBER(38) | Y | Unique row identifier

