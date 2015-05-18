---
layout: page
title: "D_CAREGIVERS"
category: dat
date: 2015-04-22 22:45:09
order: 6
---

## ```D_CAREGIVERS``` table

The Caregiver IDs (```CGID```) are stored in table ```D_CAREGIVERS```, which
contains about 11,000 rows in version 2.6 and about 15,500 rows in
version 3.0. However, we discovered that in version 2.6, one caregiver
could be assigned with multiple ```CGID```s. In version 3.0, we added one new
column called ```CG_UNIQUEID```, which is the unique ID for caregivers. For
the multiple ```CGID```s for one Care Giver, we chose one ID as the active one
and assigned status ‘A’ (*A*ctive) in the ```CGID_STATUS``` column, all other
```CGID```s were assigned status ‘M’ (*M*erged), indicating a ‘merged’ status
of the ```CGID```. Only the ```CGID``` with ```CGID_status=’A’``` was used in other tables like ```MEDEVENTS```, ```CHARTEVENTS```, etc.

Another change to this table in version 3.0 is that we added a new
column - ‘```DESCRIPTION```’, which gives more detailed information about the
Care giver. For example, a ‘MD’ can be ‘Attending’ or ‘Resident/Fellow/PA/NP’.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```CGID```| NUMBER| N | Care giver ID (the old ones from v2.6 is not unique)
```CG_UNIQUEID``` | NUMBER | Y | Unique ID of a care giver
```LABEL``` | VARCHAR2(6) | N | Title of Care Giver
```DESCRIPTION``` | NVARCHAR2(30) | Y | More detailed description of care giver
```CGID_STATUS``` | VARCHAR2(1) | Y | ‘A’ indicates an active ```CGID```, ‘M’ indicates a merged CGID.
```D_CAREGIVERSDATAID``` | NUMBER(38) | Y | Unique row identifier

*Table: Description of the columns in the ```D_CAREGIVERS``` table*


