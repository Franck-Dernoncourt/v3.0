---
layout: page
title: "Microbiologyevents"
category: dat
date: 2015-04-22 22:45:11
order: 24
---

#### 2.5.9 Laboratory and microbiology tests

In v3.0, the ```LABEVENTS``` table was re-generated from the raw lab tests
data set from BIDMC. As there have been additions of new lab tests over
the years or name changes of lab tests, and the majority of lab tests do
not have LOINC codes, it was very hard to map to the Lab ```ITEMID```s in
v2.6. Therefore, the ```ITEMID```s for Labevents are re-generated based on
current lab tests. However, whenever possible, the old lab ITEMID was
mapped and listed in the ```D_ITEMS``` table (```ORIGIN=’LAB’```) (see table 4). Also, we tried our best to map to the current LOINC codes as well.

Like other facts (…events) tables in v3.0, we included related ITEMID
descriptive columns like ‘```TESTNAME```’, ‘```FLUID```’, ‘```CATEGORY```’ and
‘```LOINC_CODE```’, much easier for word-based searches.

Please note that we collect all lab events for a patient independent of
when they were done. Some lab events are from subsequent clinic visits,
for example.

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | N | Foreign key, referring to ```ADMISSIONS```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Time of lab event.
```TEST_NAME``` | VARCHAR2(50) | Y | Included for easy word-based searches
```VALUE``` | VARCHAR2(200) | N | The result value of the lab event
```VALUENUM``` | NUMBER | N | The numeric representation of the laboratory test if the result was numeric
```VALUEUOM``` | VARCHAR2(15) | N | Units of measurement of the value of the lab event
```FLAG``` | VARCHAR2(10) | Y | Flag or annotation on the lab result
```FLUID``` | VARCHAR2(40) | Y | Type of fluid sample.
```CATEGORY``` | VARCHAR2(20) | Y | Category of the lab event
```LOINC_CODE``` | VARCHAR2(15) | Y | LOINC code for the lab event
```LABEVENTSDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the columns in the ```LABEVENTS``` table*

The ```MICROBIOLOGYEVENTS``` table in v3.0 also included names, descriptions
of the ```ITEMID```s. The following table lists all the columns in this table
in v3.0, all new columns are noted.

Column name | Data Type | New Column  | Remarks  
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | N | Foreign key, referring to ```ADMISSIONS```
```TIME``` | DATE | N | ‘```CHARTTIME```’ in v2.6
```SPEC_TYPE_CD``` | VARCHAR2(10) | Y | Code of the specimen type tested. Included for easy word-based searches
```SPEC_ITEMID``` | NUMBER(7) | N | The ID of the specimen tested. Foreign key, referring to ```D_ITEMS```
```SPEC_TYPE_DESC``` | VARCHAR2(100) | Y | Description of the specimen type. Included for easy word-based searches
```ORG_CD``` | VARCHAR2(4) | Y | Code of the organism tested. Included for easy word-based searches
```ORG_ITEMID``` | NUMBER(7) | N | The ID of the organism tested. Foreign key, referring to ```D_ITEMS```
```ORG_NAME``` | VARCHAR2(100) | Y | Name of the organism tested for. Included for easy word-based searches
```ISOLATE_NUM``` | VARCHAR2(10) | N | The isolate number for the test.
```AB_CD``` | VARCHAR2(2) | Y | Code for the antibacterium used. Included for easy word-based searches
```AB_ITEMID``` | NUMBER(7) | N | ID of the antibacterium used. Foreign key, referring to ```D_ITEMS```.
```AB_NAME``` | VARCHAR2(100) | Y | Name of the antibacterium used. Included for easy word-based searches
```DILUTION_AMOUNT``` | VARCHAR2(10) | N | The dilution amount tested for
```DILUTION\_COMPARISON``` | VARCHAR2(10) | N | The comparison used against the dilution amount, for the test: either ```<=``` , ```=```, ```>=```, or ```null``` when not available
```INTERPRETATION``` | VARCHAR2(1) | N | The interpretation of the test: (```R```)esistant, (```P```)ending, (```I```)ntermediate, or (```S```)usceptible (or ```null``` when not available)
```MICROBIOLOGYEVENTSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the V3.0 ```MICROBIOLOGYEVENTS``` table*

