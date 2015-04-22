---
layout: page
title: "Clinical data"
category: dat
date: 2015-04-22 12:48:15
order: 5
---

#### 2.5 Patient tables

#### 2.5.1 ```DEMOGRAPHIC_DETAIL``` table

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
```DEMOGRAPHIC_DETAILDATAID``` | NUMBER(7) | Y | Unique row Identifier

*Table : Description of the columns in ```Demographic_Detail``` table*

#### 2.5.2 ```D_ITEMS``` table

In version 2.6, the ```ITEMID``` and labels (descriptions) for different
events tables (such as ```CHARTEVENTS```, ```MEDEVENTS```, ```IOEVENTS```, ```LABEVENTS```) are stored in separate tables; the ranges of the ```ITEMID```s in these tables are listed in Table 2.

Table name | Range of ```ITEMID```
--- | ---
```D_Chartitems``` | 1 - 20009
```D_Meditems``` | 1 – 405
```D_IOitems``` | -1 - 6807
```D_Labitems``` | 50001 - 50735
```D_Codeditems``` | 60001 - 101885
```D_Demographicitems``` | 200001 - 200088

*Table: The ITEMS tables in version 2.6*

In version 3.0, we combined all D\_...ITEMS tables from v2.6 and the
MetaVision PARAMETERS (ITEMS) to form the new ```D_ITEMS``` table.

When we attempted to merge the Metavision data with MIMIC2V26 data, one
of the big challenges was to properly map and merge the D\_...ITEMS
table. Since Metavision data does not separate ```ITEMID```s into the same
categories (Med, IO, Coded, Lab, Chart etc.) and their names can be
totally different, it is nearly impossible to map them directly to the
six different D\_...ITEMS tables and the ```ITEMID```s in MIMIC2V26. To solve
the problem, we took the approach of combining all D\_...ITEMS tables in
v2.6 and the ```PARAMETERS``` Table in MetaVision, thus forming the new
```D_ITEMS``` table.

***Please note that, in version 2.6 and earlier versions of MIMIC2
database, one specific ITEM can have more than one ```ITEMID```. This is still
the case in version 3.0; users will have to add the MetaVision ```ITEMID``` to
the list of ITEMIDs by running a name (or word)-based search in the
```D_ITEMS``` table.***

Since we needed to merge all the D\_...ITEMS tables into one table in
version 3.0, we had to make sure different types of ```ITEMID```s (from
different D\_...ITEMS tables in version 2.6) are within their own
numeric range (no overlapping). Therefore, two types of ```ITEMID```s (MED and
IO) from version 2.6 had to be shifted to a higher range of integers to
avoid overlap with ```ITEMID```s from ```D_Chartitems``` (see Table 2).

The ‘```ORIGIN```’ column added to the new ```D_ITEMS``` table indicates the source table of the data (```ITEMID```s). The following table lists the ORIGINs and ```ITEMID``` ranges in version 3.0.

v3.0 Table name | ORIGIN | Range of ITEMID | Difference | Source table in v2.6 database
--- | --- | --- | --- | ---
```D_ITEMS``` | CHART | 1 - 20009 | None | ```D_Chartitems``` (v2.6)
 | MED | 30001 – 30405 | + 30000 | ```D_Meditems``` (v.2.6)
 | IO | 40000 – 46808 | + 40001 | ```D_IOitems``` (v2.6)
 | LAB | 50800 – 51554 | Re-generated ITEMIDs | ```D_ Labitems``` (v2.6)
 | CODED | 60001 - 101885 | None | ```D_Codeditems``` (v2.6)
 | DEMOGRAPHIC | 200001 - 200088 | none | ```D_Demographicitems``` (v2.6)
 | METAVISION | 220003 - 228647 | +220000 | MetaVision DB

*Table: The ```D_ITEMS``` table in version 3.0 and ranges of ```ITEMID```s*

Since the ```D_ITEMS``` table in v3.0 combined all six of the D\_...ITEMS
tables in v2.6 and we kept all related columns, the ```D_ITEMS``` table does
have more columns than any of its source tables. The following table
lists the column names, data types and source tables of all columns in
```MIMIC2V30.D_ITEMS``` table.

Column name | Data type | New column | Source tables/Database 
--- | --- | --- | ---
```ITEMID``` | NUMBER(7) | N | ```D_Chartitems```, ```D_Meditems```, ```D_IOitems```, ```D_Codeditems```, ```D_Labitems```, ```D_Demographicitems``` and METAVISION Database
```LABEL``` | VARCHAR2(100) | N | ```D_Chartitems```, ```D_Meditems```, ```D_IOitems```, ```D_Codeditems```, ```D_Demographicitems``` and METAVISION Database
```ABBREVIATION``` | VARCHAR2(50) | Y | METAVISION Database
```ORIGIN``` | VARCHAR2(12) | Y | The origin of the ```ITEMID``` (v2.6 or Metavision)
```CODE``` | VARCHAR2(10) | N | ```D_Codeditems```
```CATEGORY``` | VARCHAR2(50) | N | ```D_Chartitems```, ```D_IOitems```, ```D_Codeditems```, ```D_Labitems```, ```D_Demographicitems``` and METAVISION
```UNITID``` | NUMBER(5) | Y | METAVISION Database
```UNITNAME``` | VARCHAR2(50) | Y | METAVISION Database
```TYPE``` | VARCHAR2(40) | N | D\_Codeditems and METAVISION
```DESCRIPTION``` | VARCHAR2(150) | N | ```D_Chartitems```, ```D_Codeditems```
```LOWNORMALVALUE``` | FLOAT(126) | Y | METAVISION Database
```HIGHNORMALVALUE``` | FLOAT(126) | Y | METAVISION Database
```ALLERGYACTION``` | NUMBER(3) | Y | METAVISION Database
```LOINC_CODE``` | Varchar2(7) | N | Lab data from BIDMC
```LOINC_DESCRIPTION``` | Varchar2(100) | N | Lab data from BIDMC
```OLD_LABITEMID``` | NUMBER(7) | Y | ```D_Labitems```
```OLD_TEST_NAME``` | VARCHAR2(50) | Y | ```D_Labitems```
```OLD_LOINC_CODE``` | VARCHAR2(7) | Y | ```D_Labitems```
```D_ITEMSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ```D_ITEMS``` table*

#### 2.5.3 ```ICD9``` and ```DRGEVENTS``` tables

The ```ICD9``` table is an important table for users to check patient
diagnoses. The structure of this table did not change in the new
version.

But for the first time, the admission diagnosis (```adm_diagnosis```)
information is now available in the ```ADMISSIONS``` table in v3.0. (This
diagnosis is assigned by the admitting office at the moment of admission
based on input from the admitting physician. It may be modified after
the patient is treated in the hospital.)

Another table that contains diagnosis related data is the ```DRGEVENTS```
table; we included descriptive columns for the ```ITEMID``` in the new
version. The following table lists all columns of ```DRGEVENTS``` in v3.0.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign Key – referring to ```D_PATIENTS``` table
```ITEMID``` | NUMBER(7) | N | Foreign Key – referring to ```ADMISSIONS``` table
```TYPE``` | VARCHAR2(12) | Y | Type of DRG event
```CODE``` | VARCHAR2(10) | Y | Code for the DRG event
```DESCRIPTION``` | VARCHAR2(100) | Y | Description of the DRG event
```COST_WEIGHT``` | NUMBER(7) | Y | The weight for the DRG event
```DRGEVENTSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ```DRGEVENTS``` table*

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

Another table that is related to medication is POE\_MED\_ORDER, the
source data for this table comes from BIDMC data sets, not from the
MetaVision database. This table documents medications that were
*ordered* not administered, and includes orders well beyond the ICU
stay.

In version 2.6, this table was divided into two tables, POE\_MED and
POE\_ORDER. However, in the new data set we have already combined the
data from these two tables, so we just created one table.

Table 16: Description of the columns in the ```POE_MED_ORDER``` table

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
```POE_MED_ORDERDATAID``` | NUMBER | Unique row Identifier


#### 2.5.5 Charts (CHARTEVENTS table) 

The ```CHARTEVENTS``` table is the largest table in the database and contains
all bedside patient records. In version 2.6, the ```CHARTEVENTS``` table has
about 196 million rows of data; in version 3.0, the row count of the
```CHARTEVENTS``` table is 234 million.

One change we made to the ```CHARTEVENTS``` table in v3.0 is that we renamed
‘```CHARTTIME```’ column to ‘```TIME```’ and ‘```REALTIME```’ column to ‘```VALIDATIONTIME```’. The new names were introduced to avoid confusion often associated with the ‘```CHARTTIME```’ and ‘```REALTIME```’ columns in v2.6. The new names in v3.0 should be easier to understand: ‘```TIME```’ refers to the actual time the measurements were taken, and ‘```VALIDATIONTIME```’ refers to the time when the values of the measurements were recorded.

For the new data coming from MetaVision, the event time is recorded as
‘```TIME```’ and followed by the ‘```VALIDATION```’ time; we adapted the naming
conventions of the new data source. Another new column from the
MetaVision database is called ‘```COMMENTS```’, which contains units of
measure and the normal range of a measurement. This column can be very
useful to users.

Please note that there is no ‘```VALUE2```’ for the new data coming from
MetaVision. One good example is the recording of blood pressure:

In MIMIC2V26, the ```itemid=51``` (LABEL= ‘Arterial BP’) included ‘```VALUE1```’ and ‘```VALUE2```’ for systolic and diastolic blood pressures. For new patients in MIMIC2V30, there are two ```ITEMIDs``` for blood pressure measurements: for systolic blood pressure, the ```ITEMID=220179```, and for diastolic blood pressure, ```ITEMID=220180```.

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | Y | Foreign key, referring to ```ADMISSIONS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Included for easy word-based searches
```TIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Called ‘```CHARTTIME```’ in v2.6
```ELEMID``` | NUMBER(7) | N | The ELEMENTID of the chart event
```VALIDATIONTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Called ‘```REALTIME```’ in v2.6
```CGID``` | NUMBER(7) | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER(7) | N | Foreign key, referring to ```D_UNITS```
```VALUE1``` | VARCHAR2(110) | N | Can be numeric or alphabetic values
```VALUE1NUM``` | NUMBER | N | Numeric values only
```VALUE1UOM``` | VARCHAR2(120) | N | Unit of measure for ```VALUE1```
```COMMENTS``` | NCLOB | Y | New data from MetaVision, contains units and normal range of the measurements.
```VALUE2``` | VARCHAR2(110) | N | For old data only, Can be numeric or alphabetic values
```VALUE2NUM``` | NUMBER | N | For old data only, Numeric values only
```VALUE2UOM``` | VARCHAR2(20) | N | For old data only, Unit of Measure for vlaue2
```RESULTSTATUS``` | VARCHAR2(20) | N | For old data (v2.6) only
```STOPPED``` | VARCHAR2(20) | N | For old data (v2.6) only
```WARNING``` | NUMBER(1) | Y | For new data
```ERROR``` | NUMBER(1) | Y | For new data

*Table: Description of the columns in the ```CHARTEVENTS``` table*

#### **2.5.6 Fluids (IOEvents, Additives, Totalbalevents**)

In version 2.6, patient input/output (IO) data is recorded in the
```ioevents```, ```d_ioitems```, ```deliveries```, ```totalbalevents``` and ```additives``` tables.

In version 3.0, we retired the DELIVERIES table since the data contained
in this table (RATE, RATEUOM etc.) are included in the ```IOEVENTS``` table.
As mentioned earlier, the ```D_IOITEMS``` table has been merged into the
```D_ITEMS``` table.

**Please note that the ITEMIDs for IO or ADDITIVES ITEMS have been
shifted up by 40001 to avoid overlapping with ITEMIDs for the CHART
ITEMS (refer to table 3).**

As with the ```MEDEVENTS``` table, the ```IOEVENTS``` and ```ADDITIVES``` tables in v3.0 have some new columns like ‘```ORDERID```’, a foreign key referring to the ```ORDERENTRY``` table. Users can get more detailed medical order-related information from the ```ORDERENTRY``` table.

As in the ```MEDEVENTS``` table, the new IO data includes ‘```STARTTIME```’ and
‘```ENDTIME```’, making calculations of total INPUT/OUTPUT volumes much
easier.

Another change to these tables is that the ‘LABEL’ of ```ITEMID``` is included
in the table; users can do word-based searches right on the events
table, no need to join with the ```D_ITEMS``` table first.

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT\_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY\_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```ORDERID``` | NUMBER(10) | Y | Foreign key, referring to ```ORDERENTRY```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Included for easy word-based searches
```IOITEMID``` | NUMBER(7) | N | Foreign key, referring to ```IOEVENTS```
```IOITEMLABEL``` | VARCHAR2(100) | Y | Label for the IO item, included for easy word-based searches
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Used for old data, null for new data
```STARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Used for new data, null for old data
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Used for new data, null for old data
```ELEMID``` | NUMBER(7) | N | The ELEMID of a combined additive
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign Key – referring to ```D_CAREUNITS``` table
```VALUE``` | NUMBER | N | Called ‘AMOUNT’ in v2.6
```UOM``` | NVARCHAR2(70) | Y | Called ‘DOSEUNITS’ in v2.6
```IOITEMVALUE``` | NUMBER | N | Called ‘SOLVOLUME’ in v2.6
```IOITEMUOM``` | NVARCHAR2(101) | N | Called ‘SOLUNITS’ in v2.6
```SOURCE_FLG``` | VARCHAR2(10) | N | Source of data (v2.6 or METAVISION)
```ADDITIVESDATAID``` | NUMBER | N | Unique row Identifier

*Table: Description of the Columns in the ADDITIVES table*

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```ORDERID``` | NUMBER(7) | Y | Foreign key, referring to ```ORDERENTRY```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | NVARCHAR2(366) | Y | Label for the IO event, included for easy word-based searches
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Used for old data, null for new data
```ELEMID``` | NUMBER(7) | N | Element ID of a multi-component IO event
```ALTID``` | NUMBER(7) | N | Alternate ID of the IO event
```REALTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Used for old data, null for new data
```STARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Used for new data, null for old data
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Used for new data, null for old data
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign Key – referring to ```D_CAREUNITS``` table
```VALUE``` | NUMBER | N | Called ‘```VOLUME```’ in v2.6
```UOM``` | NVARCHAR2(101) | N | Called ‘```VOLUMEUOM```’ in v2.6
```UNITSHUNG``` | NUMBER(5) | N | Called ‘```SOLVOLUME```’ in v2.6
```UNITSHUNGUOM``` | VARCHAR2(20) | N | Called ‘```SOLUNITS```’ in v2.6
```NEWBOTTLE``` | NUMBER | N | New bottle attached
```STOPPED``` | VARCHAR2(20) | N | Stopped recording
```ESTIMATE``` | VARCHAR2(20) | N | Estimate?
```IOEVENTSDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the columns in the ```IOEVENTS``` table*

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Time of total balance event.
```ELEMID``` | NUMBER | N | The element ID of the total balance
```REALTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Time of inputting total balance event.
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign key, referring to ```D_CAREUNITS```
```ITEMID``` | NUMBER | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Label of the total balance event
```VOLUME``` | VARCHAR2(100) | N | Called ‘PERVOLUME’ in v2.6
```CUMITEMID``` | NUMBER | Y | To be merged with itemid.
```CUMLABEL``` | VARCHAR2(40) | Y | To be merged with label.
```CUMVOLUME``` | VARCHAR2(100) | N | Cumulative volume of the total balance events over the period
```UOM``` | NVARCHAR2(10) | Y | Units of measurement of the cumulative volume
```ACCUMPERIOD``` | VARCHAR2(100) | N | The accumulation period
```APPROX``` | VARCHAR2(100) | N | Is the measurement an approximation?
```RESET``` | NUMBER | N | Reset the balance
```STOPPED``` | VARCHAR2(20) | N | Stopped recording the balance
```TOTALBALEVENTDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the columns in the TOTALBALEVENTS table*

#### 2.5.7 Notes (Noteevents table)

In version 3.0, we added three new types of notes in the ```NOTEEVENTS```
table: ECG reports, Echo reports, and the physician notes from
MetaVision. Here is a list of NOTES categories in v3.0 and v2.6
(Extracted from the ```NOTEEVENTS``` table, exact upper/lower case match).

Categories of Notes in v3.0 | Categories of Notes in v2.6
--- | ---
```ECG_REPORT``` | *(Not available in v2.6)*
```ECHO_REPORT``` | *(Not available in v2.6)*
```DISCHARGE_SUMMARY``` | ```DISCHARGE_SUMMARY```
```NURSING/OTHER``` | Nursing/Other
```PROVIDER_NOTE``` | *(Not available in v2.6) *
```RADIOLOGY_REPORT``` | ```RADIOLOGY_REPORT```

*Table: Comparison of Notes *categories* in ```NOTEEVENTS``` table*

The Nursing/Other category contains the nursing and respiratory
therapist notes collected (2008 or earlier) from the CareVue system.
Provider notes collected from the MetaVision are under the
PROVIDER\_NOTE category and include notes by physicians, nurses,
therapists and others. The table structure of ```NOTEEVENTS``` did not change
between v2.6 and v3.0. However, the ```CHARTTIME``` of ```DISCHARGE_SUMMARY```
notes used ‘DISCHARGE\_TIME’ in v3.0 while the ‘```ADMISSION_TIME```’ was
used in v2.6.

Note: Some entries in the ```NOTEEVENTS``` table contain empty text due to the
null entry in the original text. These entries will be removed in the
final release to avoid confusion.

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```REC_ID``` | NUMBER | Y | Primary key
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to D\_PATIENTS
```HADM_ID``` | NUMBER(7) | N | Foreign key, referring to ADMISSIONS
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ICUSTAYEVENTS
```ELEM_ID``` | NUMBER(7) | N | Element ID of each note
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Datetime of the note request
```REALTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Datetime of the note request
```CGID``` | NUMBER(7) | N | Foreign key, referring to D\_CAREGIVERS
```CORRECTION``` | CHAR(1) | N | Is the note a correction to a previous note?
```CUID``` | NUMBER(7) | N | Foreign key, referring to D\_CAREUNITS
```CATEGORY``` | VARCHAR2(26) | N | Type of note
```TITLE``` | VARCHAR2(255) | N | Title of the note
```TEXT``` | CLOB | N | Main body of the note
```EXAM_NAME``` | VARCHAR2(100) | N | Name of the examination
```PATIENT_INFO``` | VARCHAR2(4000) | N | Patient information
```NOTEEVENTSDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the Columns in the ```NOTEEVENTS``` table*

#### 2.5.8 Procedures (Procedureevents table)

In v2.6, ```PROCEDUREEVENTS``` table is a relatively simple table, containing
only 5 columns: ```SUBJECT_ID```, ```HADM_ID```, ```ITEMID```, ```SEQUENCE_NUM```, ```PROC_DT```.

In v3.0, six new columns are added to this table as shown in the
following table. The new procedures all have ```ORDERID```s, related order
information can be found in ```ORDERENTRY``` table. We also included ‘LABEL’
for each ```ITEMID```, make it easier for word-based searches. Also, each new
procedure has a ‘```START```’ and ‘```END```’ time.

In v2.6, checking for INTUBATION/EXTUBATION event and time was not an
easy task. In the new version, it is very easy to find these events in
the ```PROCEDUREEVENTS``` table.


Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | N | Foreign key, referring to ```ADMISSIONS```
```ORDERID``` | NUMBER(7) | Y | Foreign key, referring to ```ORDERENTRY```
```ORDERCATEGORYNAME``` | VARCHAR2(30) | Y | Name of the order category
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Label of the procedure event, included for easy word-based searches
```PROC_DT``` | DATE | N | The date on which the procedure event occurred
```SEQUENCE_NUM``` | NUMBER(7) | N | Intended to be a number indicating the chronological order of this event, relative to the other events for the same patient and hospital admission (lower equates to earlier).
```STARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Timestamp to accompany ```PROC_DT```. Used for new data, null for old data
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Timestamp to accompany ```PROC_DT```. Used for new data, null for old data
```CGID``` | NUMBER(7) | Y | Foreign key, referring to ```D_CAREGIVERS```
```PROCEDUREEVENTSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ```PROCEDUREEVENTS``` table*

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

