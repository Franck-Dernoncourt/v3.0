---
layout: page
title: "ORDERENTRY"
category: dat
date: 2015-04-22 22:45:11
order: 26
---

## ```ORDERENTRY``` table

```ORDERENTRY``` is a newly added table that contains order information for all medical treatments. ```MEDEVENTS```, ```ADDITIVES``` and ```IOEVENTS``` now all contain ```ORDERID```, which is a foreign key referring to the ```ORDERENTRY``` table. 

Since the new source database, MetaVision, has a totally different schema design and table structure, new columns were added to the medication-related tables while trying to preserve data and columns from the earlier version. Here is a list of all columns in the newly added ``ORDERENTRY``` table:

Column name | Data Type | Remarks
--- | --- | ---
```ORDERID``` | NUMBER(7) | Primary key
```LINKORDERID``` | NUMBER(7) | Link to the ```ORDERID```
```SUBJECT_ID``` | NUMBER(7) | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | Foreign key, referring to ```ICUSTAYEVENTS```
```CGID``` | NUMBER | Foreign key, referring to ```D_CAREGIVERS```
```ISSUEDATE``` | TIMESTAMP(6) | Issue date for the order
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

