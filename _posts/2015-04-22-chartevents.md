---
layout: page
title: "CHARTEVENTS"
category: dat
date: 2015-04-22 22:45:09
order: 4
---

## ```CHARTEVENTS``` table

The ```CHARTEVENTS``` table is the largest table in the database and contains
all bedside patient records. In v2.6, the ```CHARTEVENTS``` table has
about 196 million rows of data; in v3.0, the row count of the
```CHARTEVENTS``` table is 234 million.

One change we made to the ```CHARTEVENTS``` table in v3.0 is that we renamed
```CHARTTIME``` column to ```TIME``` and ```REALTIME``` column to ```VALIDATIONTIME```. The new names were introduced to avoid confusion often associated with the ```CHARTTIME``` and ```REALTIME``` columns in v2.6. The new names in v3.0 should be easier to understand: ```TIME``` refers to the actual time the measurements were taken, and ```VALIDATIONTIME``` refers to the time when the values of the measurements were recorded.

For the new data coming from MetaVision, the event time is recorded as
```TIME``` and followed by the ```KEYINTIME```; we adapted the naming
conventions of the new data source. Another new column from the
MetaVision database is called ```COMMENTS```, which contains units of
measure and the normal range of a measurement. This column can be very
useful to users.

Note that there is no ```VALUE2``` for the new data coming from
MetaVision. One example is the recording of blood pressure. In MIMIC2V26, the ```itemid=51``` (LABEL= ‘Arterial BP’) included ```VALUE1``` and ```VALUE2``` for systolic and diastolic blood pressures. For new patients in MIMIC2V30, there are two ```ITEMIDs``` for blood pressure measurements: for systolic blood pressure, the ```ITEMID=220179```, and for diastolic blood pressure, ```ITEMID=220180```.

Column name | Data type | New column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```HADM_ID``` | NUMBER(7) | Y | Foreign key, referring to ```ADMISSIONS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Included for easy word-based searches
```TIME``` | TIMESTAMP(6) | N | Called ‘```CHARTTIME```’ in v2.6
```ELEMID``` | NUMBER(7) | N | The ELEMENTID of the chart event
```KEYINTIME``` | TIMESTAMP(6) | N | Called ‘```REALTIME```’ in v2.6
```CGID``` | NUMBER(7) | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER(7) | N | Foreign key, referring to ```D_UNITS```
```VALUE1``` | VARCHAR2(110) | N | Can be numeric or alphabetic values
```VALUE1NUM``` | NUMBER | N | Numeric values only
```VALUE1UOM``` | VARCHAR2(120) | N | Unit of measure for ```VALUE1```
```COMMENTS``` | NCLOB | Y | Includes range for 'normal' measurements (MetaVision only).
```VALUE2``` | VARCHAR2(110) | N | For old data only. Numeric and alphabetic.
```VALUE2NUM``` | NUMBER | N | For old data only. Numeric values only.
```VALUE2UOM``` | VARCHAR2(20) | N | For old data only. Unit of Measure for value2.
```RESULTSTATUS``` | VARCHAR2(20) | N | For old data (v2.6) only.
```STOPPED``` | VARCHAR2(20) | N | For old data (v2.6) only.
```WARNING``` | NUMBER(1) | Y | For new data.
```ERROR``` | NUMBER(1) | Y | For new data.

