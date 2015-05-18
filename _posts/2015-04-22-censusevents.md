---
layout: page
title: "CENSUSEVENTS"
category: dat
date: 2015-04-22 22:45:09
order: 3
---

## ```CENSUSEVENTS``` table

The ```CENSUSEVENTS``` table tracks the changes of beds or care units and
transfer of patients. For MIMIC2V30, this table is generated based on
the ```PATIENTTRACKING``` table in the MetaVision database.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```CENSUS_ID``` | NUMBER | N | Primary key
```SUBJECT_ID``` | NUMBER | N | Foreign key, referring to ```D_PATIENTS``` table
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUEVENTS``` table
```INTIME``` | TIMESTAMP(6) | N | ICU admission time
```OUTTIME``` | TIMESTAMP(6) | N | ICU discharge time
```CUID``` | NUMBER(7) | N | Foreign key – referring to ```D_CAREUNITS``` table
```LOS``` | NUMBER | N | ICU length of stay in minutes
```DESTCAREUNIT``` | NUMBER(7) | N | Destination care unit
```DISCHSTATUS``` | VARCHAR2(20) | N | Discharge status
```CENSUSEVENTSDATAID``` | NUMBER | Y | Unique row identifier

