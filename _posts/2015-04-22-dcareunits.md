---
layout: page
title: "D_CAREUNITS"
category: dat
date: 2015-04-22 22:45:10
order: 7
---

## ```D_CAREUNITS``` table

This table did not change much between version 2.6 and version 3.0, the
only difference is that ```CUID``` 54 used to be ```CSRU```, but it is now called ```CVICU```, so the label of this care unit in version 3.0 includes both names.

Column name | Data type | New Column | Remarks
--- | --- | --- | ---
```CUID``` | NUMBER | N | Care unit ID
```LABEL``` | VARCHAR2(20) | N | Title of Care Giver
```D_CAREUNITSDATAID``` | NUMBER(38) | Y | Unique row identifier

*Table: Description of the columns in the ```D_CAREUNITS``` table*


