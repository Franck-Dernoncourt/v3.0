---
layout: page
title: "MICROBIOLOGYEVENTS"
category: dat
date: 2015-04-22 22:45:11
order: 24
---

## ```MICROBIOLOGYEVENTS``` table

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
```DILUTION_COMPARISON``` | VARCHAR2(10) | N | The comparison used against the dilution amount, for the test: either ```<=``` , ```=```, ```>=```, or ```null``` when not available
```INTERPRETATION``` | VARCHAR2(1) | N | The interpretation of the test: (```R```)esistant, (```P```)ending, (```I```)ntermediate, or (```S```)usceptible (or ```null``` when not available)
```MICROBIOLOGYEVENTSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the V3.0 ```MICROBIOLOGYEVENTS``` table*
