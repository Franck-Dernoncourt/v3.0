---
layout: page
title: "Procedureevents"
category: dat
date: 2015-04-22 22:45:11
order: 28
---

#### ```PROCEDUREEVENTS``` table

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
```STARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Timestamp to accompany ```PROC_DT```. Used for new data, null for old data
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | Y | Timestamp to accompany ```PROC_DT```. Used for new data, null for old data
```CGID``` | NUMBER(7) | Y | Foreign key, referring to ```D_CAREGIVERS```
```PROCEDUREEVENTSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ```PROCEDUREEVENTS``` table*

