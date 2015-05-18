---
layout: page
title: "POE_MED_ORDER"
category: dat
date: 2015-04-22 22:45:11
order: 27
---

## ```POE_MED_ORDER``` table

Another table that is related to medication is ```POE_MED_ORDER```. The
source data for this table comes from Beth Israel Deaconess Medical Center datasets, not from the MetaVision database. This table documents medications that were *ordered* not administered, and includes orders well beyond the ICU
stay.

In version 2.6, this table was divided into two tables, ```POE_MED``` and
```POE_ORDER```. However, in the new data set we have already combined the
data from these two tables, so we just created one table.

Column name | Data Type | Remarks
--- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | Foreign key, referring to ```ADMISSIONS```
```ICUSTAY_ID``` | NUMBER(7) | Foreign key, referring to ```ICUSTAYEVENTS```
```STARTTIME``` | TIMESTAMP(6) | Start date of the POE order
```ENDTIME``` | TIMESTAMP(6) | Stop date of the POE order
```DRUG_TYPE``` | VARCHAR2(80) | Type of drug
```DRUG``` | VARCHAR2(80) | Name of the drug
```DRUG_NAME_POE``` | VARCHAR2(80) | Name of the drug(2). Column to be removed.
```DRUG_NAME_GENERIC``` | VARCHAR2(50) | Generic name of the drug
```FORMULARY_DRUG_CD``` | VARCHAR2(90) | Formulary drug code
```GSN``` | VARCHAR2(180) | Generic Sequence Number
```NDC``` | VARCHAR2(90) | National Drug Code
```PROD_STRENGTH``` | VARCHAR2(90) | Product strength
```DOSE_VAL_RX``` | VARCHAR2(90) | Value of the dose received
```DOSE_UNIT_RX``` | VARCHAR2(90) | Units of the dose received
```FORM_VAL_DISP``` | VARCHAR2(90) | Unknown
```FORM_UNIT_DISP``` | VARCHAR2(90) | Unknown
```ROUTE``` | VARCHAR2(60) | Route of administration
```POE_MED_ORDERDATAID``` | NUMBER | Unique row identifier

Table: Description of the columns in the ```POE_MED_ORDER``` table

