---
layout: page
title: "ADDITIVES"
category: dat
date: 2015-04-22 22:45:09
order: 1
---

## ```ADDITIVES``` table

In version 2.6, patient input/output (IO) data is recorded in the
```IOEVENTS```, ```D_IOITEMS```, ```DELIVERIES```, ```TOTALBALEVENTS``` and ```ADDITIVES``` tables.

The ```ADDITIVES``` tables has new columns, including ‘```ORDERID```’, a foreign key referring to the ```ORDERENTRY``` table. Users can get more detailed medical order-related information from the ```ORDERENTRY``` table.

The new IO data includes ```STARTTIME``` and ```ENDTIME```, making calculations of total INPUT/OUTPUT volumes more straightforward. Another change to these tables is that the ‘LABEL’ of ```ITEMID``` is included, enabling simple word-based searches without the need to join with the ```D_ITEMS``` table.

**Please note that the ITEMIDs for IO and ADDITIVES ITEMS have been
shifted up by 40001 to avoid overlapping with ITEMIDs for the CHART
ITEMS (refer to table 3).**

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```ORDERID``` | NUMBER(10) | Y | Foreign key, referring to ```ORDERENTRY```
```ITEMID``` | NUMBER(7) | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Included for easy word-based searches
```IOITEMID``` | NUMBER(7) | N | Foreign key, referring to ```IOEVENTS```
```IOITEMLABEL``` | VARCHAR2(100) | Y | Label for the IO item, included for easy word-based searches
```CHARTTIME``` | TIMESTAMP(6) | N | Used for old data, null for new data
```STARTTIME``` | TIMESTAMP(6) | Y | Used for new data, null for old data
```ENDTIME``` | TIMESTAMP(6) | Y | Used for new data, null for old data
```ELEMID``` | NUMBER(7) | N | The ELEMID of a combined additive
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign Key – referring to ```D_CAREUNITS``` table
```VALUE``` | NUMBER | N | Called ‘AMOUNT’ in v2.6
```UOM``` | NVARCHAR2(70) | Y | Called ‘DOSEUNITS’ in v2.6
```IOITEMVALUE``` | NUMBER | N | Called ‘SOLVOLUME’ in v2.6
```IOITEMUOM``` | NVARCHAR2(101) | N | Called ‘SOLUNITS’ in v2.6
```SOURCE_FLG``` | VARCHAR2(10) | N | Source of data (v2.6 or METAVISION)
```ADDITIVESDATAID``` | NUMBER | N | Unique row identifier

