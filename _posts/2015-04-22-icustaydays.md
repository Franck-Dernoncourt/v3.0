---
layout: page
title: "Icustay_days"
category: dat
date: 2015-04-22 22:45:10
order: 14
---

#### ```ICUSTAY_DAYS``` table

The ```ICUSTAY_DAYS``` table is generated from the ```ICUSTAYEVENTS``` table; it basically listed the ```ICUSTAYEVENTS``` by days and marked the first and last day of ICUSTAY.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```ICUSTAY_ID``` | NUMBER(7) | N | Primary key
```SUBJECT_ID``` | NUMBER(7) | N | Foreign Key – referring to ```D_PATIENTS``` table
```SEQ``` | NUMBER(7) | N | Day number of the ICU stay
```BEGINTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Start time of the ICU stay day
```ENDTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | End time of the ICU stay day
```FIRST_DAY_FLG``` | CHAR(1) | N | The first day of the ICU stay (Y/N)
```LAST_DAY_FLG``` | CHAR(1) | N | The last day of the ICU stay (Y/N)
```ICUSTAYDAYSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ```ICUStay_days``` table*