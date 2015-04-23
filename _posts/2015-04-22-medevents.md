---
layout: page
title: "Medevents"
category: dat
date: 2015-04-22 22:45:11
order: 23
---

#### 2.5.4 Medications (```MEDEVENTS```, ```ORDERENTRY```, and ```POE_MED_ORDER``` tables)

In version 3.0, a new table – ```ORDERENTRY```, which contains all medical
treatment order information, is added to medication related tables.
```MEDEVENTS```, ```ADDITIVES``` and ```IOEVENTS``` now all contain ```ORDERID```, which is a foreign key referring to the ```ORDERENTRY``` table. Since the new source database, MetaVision, has totally different schema design and table
structures, we added new columns to the medication-related tables while
trying to preserve all the data and columns from the old version.

One big difference you may notice is that all new medication records
have ‘```START```’ and ‘```END```’ times; users can easily calculate the total
amount of medication using these two columns. Because of this, the
```A_MEDDURATIONS``` table is no longer needed. But users can still use that
table in v2.6 for any checking and calculations for the old data.

The following table lists the columns of ```MEDEVENTS```; new columns are
noted.

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```ORDERID``` | NUMBER(7) | Y | Foreign key, referring to ``ORDERENTRY``
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Included for easy word-based searches
```SOLITEMID``` | NUMBER(7) | N | ITEMID of the solution used in the medication event
```SOLITEMLABEL``` | VARCHAR2(100) | Y | Label of the solution used in the medication event. Included for easy word-based searches
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Used for old data, ```null``` for new data
```ELEMID``` | NUMBER(7) | N | Element ID for the event
```REALTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Used for old data, ```null``` for new data
```STARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Used for new data, ```null``` for old data
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Used for new data, ```null``` for old data
```VALUE``` | NUMBER | N | Dosage of the medication event. Called ‘```DOSE```’ in v2.6
```UOM``` | VARCHAR2(100) | Y | Units of measurement of the medication event. Called ‘```DOSEUOM```’ in v2.6
```SOLITEMVALUE``` | NUMBER | N | Volume of solution used in the medication event. Called ‘SOLVOLUME’ in v2.6
```SOLITEMUOM``` | VARCHAR2(100) | N | Units of the volume of solution used in the medication event. Called ‘SOLUNITS’ in v2.6
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign Key – referring to ```D_CAREUNITS``` table
```STOPPED``` | VARCHAR2(20) | N | Medication stopped
```MEDEVENTSDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the columns in the ```MEDEVENTS``` table*

Here is a list of all columns in the newly added table – ```ORDERENTRY```.

Column name | Data Type | Remarks
--- | --- | ---
```ORDERID``` | NUMBER(7) | Primary key
```LINKORDERID``` | NUMBER(7) | Link to the ```ORDERID```
```SUBJECT_ID``` | NUMBER(7) | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | Foreign key, referring to ```ICUSTAYEVENTS```
```CGID``` | NUMBER | Foreign key, referring to ```D_CAREGIVERS```
```ISSUEDATE``` | TIMESTAMP(6) WITH TIME ZONE | Issue date for the order
```ORDERCATEGORY``` | VARCHAR2(84) | Category for the order
```PATIENTWEIGHT``` | NUMBER(12) | Weight of the patient in grams
```ISOPENBAG``` | NUMBER(1) | Unknown
```CANCELREASON``` | NUMBER(5) | Unknown
```COMMENTS``` | NVARCHAR2(1000) | Comments
```LOCATIONNAME``` | NVARCHAR2(153) | Body location
```ROUTE``` | NVARCHAR2(50) | Route of administration
```DURATION``` | NUMBER(12) | Duration of the order
```DURATIONUOM``` | VARCHAR2(70) | Units of measurement of the order duration
```TOTALVOLUME``` | NUMBER(12) | Total volume of order event
```TOTALVOLUMEUOM``` | VARCHAR2(70) | Units of the order event
```CONTINUEINNEXTDEPT``` | NUMBER(1) | Order continued in external department? (0/1)
```ORDERENTRYDATAID``` | NUMBER | Unique row identifier

*Table: Description of the columns in the ```ORDERENTRY``` table*

Another table that is related to medication is ```POE_MED_ORDER```, the
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
```START_DT``` | TIMESTAMP(6) WITH TIME ZONE | Start date of the POE order
```STOP_DT``` | TIMESTAMP(6) WITH TIME ZONE | Stop date of the POE order
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
