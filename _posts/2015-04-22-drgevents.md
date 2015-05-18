---
layout: page
title: "DRGEVENTS"
category: dat
date: 2015-04-22 22:45:10
order: 12
---

## ```DRGEVENTS``` table

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
