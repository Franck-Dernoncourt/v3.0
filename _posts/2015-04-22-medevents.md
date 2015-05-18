---
layout: page
title: "MEDEVENTS"
category: dat
date: 2015-04-22 22:45:11
order: 23
---

## ```MEDEVENTS``` table

In version 3.0, a new table – ```ORDERENTRY```, which contains all medical
treatment order information, is added to medication related tables.
```MEDEVENTS```, ```ADDITIVES``` and ```IOEVENTS``` now all contain ```ORDERID```, which is a foreign key referring to the ```ORDERENTRY``` table. 

One big difference you may notice is that all new medication records
have ```START``` and ```END``` times; users can easily calculate the total
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
```CHARTTIME``` | TIMESTAMP(6) | N | Used for old data, ```null``` for new data
```ELEMID``` | NUMBER(7) | N | Element ID for the event
```REALTIME``` | TIMESTAMP(6) | N | Used for old data, ```null``` for new data
```STARTTIME``` | TIMESTAMP(6) | Y | Used for new data, ```null``` for old data
```ENDTIME``` | TIMESTAMP(6) | Y | Used for new data, ```null``` for old data
```VALUE``` | NUMBER | N | Dosage of the medication event. Called ‘```DOSE```’ in v2.6
```UOM``` | VARCHAR2(100) | Y | Units of measurement of the medication event. Called ‘```DOSEUOM```’ in v2.6
```SOLITEMVALUE``` | NUMBER | N | Volume of solution used in the medication event. Called ‘SOLVOLUME’ in v2.6
```SOLITEMUOM``` | VARCHAR2(100) | N | Units of the volume of solution used in the medication event. Called ‘SOLUNITS’ in v2.6
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign Key – referring to ```D_CAREUNITS``` table
```STOPPED``` | VARCHAR2(20) | N | Medication stopped
```MEDEVENTSDATAID``` | NUMBER | Y | Unique row identifier

