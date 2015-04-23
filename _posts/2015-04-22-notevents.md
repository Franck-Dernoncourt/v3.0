---
layout: page
title: "Notevents"
category: dat
date: 2015-04-22 22:45:11
order: 25
---

#### ```NOTEEVENTS``` table

In version 3.0, we added three new types of notes in the ```NOTEEVENTS```
table: ECG reports, Echo reports, and the physician notes from
MetaVision. Here is a list of NOTES categories in v3.0 and v2.6
(Extracted from the ```NOTEEVENTS``` table, exact upper/lower case match).

Categories of Notes in v3.0 | Categories of Notes in v2.6
--- | ---
```ECG_REPORT``` | *(Not available in v2.6)*
```ECHO_REPORT``` | *(Not available in v2.6)*
```DISCHARGE_SUMMARY``` | ```DISCHARGE_SUMMARY```
```NURSING/OTHER``` | Nursing/Other
```PROVIDER_NOTE``` | *(Not available in v2.6) *
```RADIOLOGY_REPORT``` | ```RADIOLOGY_REPORT```

*Table: Comparison of Notes *categories* in ```NOTEEVENTS``` table*

The Nursing/Other category contains the nursing and respiratory
therapist notes collected (2008 or earlier) from the CareVue system.
Provider notes collected from the MetaVision are under the
PROVIDER\_NOTE category and include notes by physicians, nurses,
therapists and others. The table structure of ```NOTEEVENTS``` did not change
between v2.6 and v3.0. However, the ```CHARTTIME``` of ```DISCHARGE_SUMMARY```
notes used ‘DISCHARGE\_TIME’ in v3.0 while the ‘```ADMISSION_TIME```’ was
used in v2.6.

Note: Some entries in the ```NOTEEVENTS``` table contain empty text due to the
null entry in the original text. These entries will be removed in the
final release to avoid confusion.

Column name | Data Type | New Column  | Remarks
--- | --- | --- | ---
```REC_ID``` | NUMBER | Y | Primary key
```SUBJECT_ID``` | NUMBER(7) | N | Foreign key, referring to D\_PATIENTS
```HADM_ID``` | NUMBER(7) | N | Foreign key, referring to ADMISSIONS
```ICUSTAY_ID``` | NUMBER(7) | N | Foreign key, referring to ICUSTAYEVENTS
```ELEM_ID``` | NUMBER(7) | N | Element ID of each note
```CHARTTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Datetime of the note request
```REALTIME``` | TIMESTAMP(6) WITH TIME ZONE | N | Datetime of the note request
```CGID``` | NUMBER(7) | N | Foreign key, referring to D\_CAREGIVERS
```CORRECTION``` | CHAR(1) | N | Is the note a correction to a previous note?
```CUID``` | NUMBER(7) | N | Foreign key, referring to D\_CAREUNITS
```CATEGORY``` | VARCHAR2(26) | N | Type of note
```TITLE``` | VARCHAR2(255) | N | Title of the note
```TEXT``` | CLOB | N | Main body of the note
```EXAM_NAME``` | VARCHAR2(100) | N | Name of the examination
```PATIENT_INFO``` | VARCHAR2(4000) | N | Patient information
```NOTEEVENTSDATAID``` | NUMBER | Y | Unique row Identifier

*Table: Description of the Columns in the ```NOTEEVENTS``` table*


