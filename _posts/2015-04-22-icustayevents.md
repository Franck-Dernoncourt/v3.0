---
layout: page
title: "ICUSTAYEVENTS"
category: dat
date: 2015-04-22 22:45:10
order: 15
---

#### ```ICUSTAYEVENTS``` table

The ```ICUSTAYEVENTS``` table is generated from the ```CENSUSEVENTS``` table. An ```ICUSTAY_ID``` is generated to mark any new ICUSTAY events for patients. In many cases, patients can be in and out of the ICU care units multiple
times during one hospital admission. For these cases, we set the
following rule regarding ```ICUSTAY_ID```s:

**For patients transferred out of ICU units but re-admitted to the same ICU care unit within 24 hours, it is considered as one ICUSTAY event with the same ```ICUSTAY_ID```. However, if the patient was re-admitted back to the same ICU care unit after 24 hours, it is considered as a new ICUSTAY event and is assigned a new ```ICUSTAY_ID```**.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```ICUSTAY_ID``` | NUMBER(7) | N | Primary key
```SUBJECT_ID``` | NUMBER | N | Foreign Key – referring to ```D_PATIENTS``` table
```INTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | ICU admission time
```OUTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | ICU discharge time
```LOS``` | NUMBER | N | ICU length of stay in minutes
```FIRST_CAREUNIT``` | NUMBER | N | First care unit
```LAST_CAREUNIT``` | NUMBER | N | Last care unit
```ADMISSIONSDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the ICUStayevents table*
