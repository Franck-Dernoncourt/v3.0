---
layout: page
title: "LABEVENTS"
category: dat
date: 2015-04-22 22:45:10
order: 17
---

## ```LABEVENTS``` table

In v3.0, the ```LABEVENTS``` table was re-generated from the raw lab tests
data set from BIDMC. As there have been additions of new lab tests over
the years or name changes of lab tests, and the majority of lab tests do
not have LOINC codes, it was very hard to map to the Lab ```ITEMID```s in
v2.6. Therefore, the ```ITEMID```s for Labevents are re-generated based on
current lab tests. However, whenever possible, the old lab ITEMID was
mapped and listed in the ```D_ITEMS``` table (```ORIGIN=’LAB’```) (see table 4). Also, we tried our best to map to the current LOINC codes as well.

Like other facts (…events) tables in v3.0, we included related ITEMID
descriptive columns like ```TESTNAME```, ```FLUID```, ```CATEGORY``` and
```LOINC_CODE``` to facilitate word-based searches. Please note that we collect all lab events for a patient independent of when they were done. Some lab events are from subsequent clinic visits, for example.

Column name | Data type | New column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | N | Foreign key, referring to ```ADMISSIONS```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```CHARTTIME``` | TIMESTAMP(6) | N | Time of lab event.
```TEST_NAME``` | VARCHAR2(50) | Y | Included for easy word-based searches
```VALUE``` | VARCHAR2(200) | N | The result value of the lab event
```VALUENUM``` | NUMBER | N | Numeric representation of ```VALUE``` if the result was numeric.
```VALUEUOM``` | VARCHAR2(15) | N | Units of measurement of the value of the lab event
```FLAG``` | VARCHAR2(10) | Y | Flag or annotation on the lab result
```FLUID``` | VARCHAR2(40) | Y | Type of fluid sample.
```CATEGORY``` | VARCHAR2(20) | Y | Category of the lab event
```LOINC_CODE``` | VARCHAR2(15) | Y | LOINC code for the lab event
```LABEVENTSDATAID``` | NUMBER | Y | Unique row identifier

