---
layout: page
title: "Upgrading from v2.6 to v3.0"
category: new
date: 2015-07-09 10:15:19
order: 1
---


# Why did things change?

The data available in MIMIC II v2.6 was between 2001-2008, and it was during this period that the Beth Israel Deaconess Medical Center (BIDMC) utilized the Phillips CareVue system (colloquially known as CareVue). CareVue was an electronic data management system which, simplifying things for clarity, maintained a database of recorded data for ICU patients and provided various displays of that information to the care providere. The database extract used for MIMIC II was from CareVue, and was a denormalized version of the live ICU database. The MIMIC II database very much echoes the format of this original CareVue extract.

In 2008, the BIDMC switched from Phillips CareVue to iMDSoft Metavision (colloquially known as Metavision). Metavision also provided a database extract, but in a completely different format. As a result, a large amount of work was required to coalesce both the old CareVue data and the new Metavision data.

# What changed?

To provide better readability, the primary changes are broken down into various topic areas listed in this section.