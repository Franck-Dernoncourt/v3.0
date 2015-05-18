---
layout: page
title: "TOTALBALEVENTS"
category: dat
date: 2015-04-22 22:45:12
order: 29
---

## ```TOTALBALEVENTS``` table

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
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to ```D_PATIENTS```
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ```ICUSTAYEVENTS```
```CHARTTIME``` | TIMESTAMP(6) | N | Time of total balance event.
```ELEMID``` | NUMBER | N | The element ID of the total balance
```REALTIME``` | TIMESTAMP(6) | N | Time of inputting total balance event.
```CGID``` | NUMBER | N | Foreign key, referring to ```D_CAREGIVERS```
```CUID``` | NUMBER | N | Foreign key, referring to ```D_CAREUNITS```
```ITEMID``` | NUMBER | N | Foreign key, referring to ```D_ITEMS```
```LABEL``` | VARCHAR2(100) | Y | Label of the total balance event
```VOLUME``` | VARCHAR2(100) | N | Called ‘PERVOLUME’ in v2.6
```CUMITEMID``` | NUMBER | Y | To be merged with itemid.
```CUMLABEL``` | VARCHAR2(40) | Y | To be merged with label.
```CUMVOLUME``` | VARCHAR2(100) | N | Cumulative volume of the total balance events over the period
```UOM``` | NVARCHAR2(10) | Y | Units of measurement of the cumulative volume
```ACCUMPERIOD``` | VARCHAR2(100) | N | The accumulation period
```APPROX``` | VARCHAR2(100) | N | Is the measurement an approximation?
```RESET``` | NUMBER | N | Reset the balance
```STOPPED``` | VARCHAR2(20) | N | Stopped recording the balance
```TOTALBALEVENTDATAID``` | NUMBER | Y | Unique row identifier

*Table: Description of the columns in the TOTALBALEVENTS table*
