---
layout: page
title: "Demographic_detail"
category: dat
date: 2015-04-22 22:45:10
order: 11
---

#### ```DEMOGRAPHIC_DETAIL``` table

This table contains patient demographic information such as ethnicity,
religion, marital status as well as admission source, admission type and
insurance information. For version 3.0, this table contains ```ITEMID``` as
well as descriptions, making word-based searches much easier.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Primary key
```HADM_ID``` | NUMBER(7) | N | Foreign key referring to ```ADMISSIONS``` table
```MARITAL_STATUS_ITEMID``` | NUMBER(7) | N | The ID of the marital status
```MARITAL_STATUS_DESCR``` | VARCHAR2(50) | N | Description of the marital status
```ETHNICITY_ITEMID``` | NUMBER(7) | N | The ID of the ethnicity
```ETHNICITY_DESCR``` | VARCHAR2(60) | N | Description of the ethnicity
```OVERALL_PAYOR_GROUP_ITEMID``` | NUMBER(7) | N | The itemid for the payor group
```OVERALL_PAYOR_GROUP_DESCR``` | VARCHAR2(50) | N | Description of the payor group
```RELIGON_ITEMID``` | NUMBER(7) | N | The ID of the religon
```RELIGON_DESCR``` | VARCHAR2(50) | N | Description of the religon
```ADMISSION_TYPE_ITEMID``` | NUMBER(7) | N | The ID of the admission type
```ADMISSION_TYPE_DESCR``` | VARCHAR2(50) | N | Description of the admission type
```ADMISSION_SOURCE_ITEMID``` | NUMBER(7) | N | The ID of the admission source
```ADMISSION_SOURCE_DESCR``` | VARCHAR2(50) | N | Description of the admission source
```DEMOGRAPHIC_DETAILDATAID``` | NUMBER(7) | Y | Unique row identifier

*Table : Description of the columns in ```Demographic_Detail``` table*


