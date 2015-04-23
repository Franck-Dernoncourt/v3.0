---
layout: page
title: "Additives"
category: dat
date: 2015-04-22 22:45:09
order: 1
---

#### ```ADDITIVES``` table

In version 2.6, patient input/output (IO) data is recorded in the
```IOEVENTS```, ```D_IOITEMS```, ```DELIVERIES```, ```TOTALBALEVENTS``` and ```ADDITIVES``` tables.

As with the ```MEDEVENTS``` table, the ```IOEVENTS``` and ```ADDITIVES``` tables in v3.0 have some new columns like ‘```ORDERID```’, a foreign key referring to the ```ORDERENTRY``` table. Users can get more detailed medical order-related information from the ```ORDERENTRY``` table.

As in the ```MEDEVENTS``` table, the new IO data includes ```STARTTIME``` and
```ENDTIME```, making calculations of total INPUT/OUTPUT volumes much
easier.

Another change to these tables is that the ‘LABEL’ of ```ITEMID``` is included
in the table; users can do word-based searches right on the events
table, no need to join with the ```D_ITEMS``` table first.

**Please note that the ITEMIDs for IO and ADDITIVES ITEMS have been
shifted up by 40001 to avoid overlapping with ITEMIDs for the CHART
ITEMS (refer to table 3).**

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

