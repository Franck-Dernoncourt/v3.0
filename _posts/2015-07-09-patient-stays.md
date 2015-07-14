---
layout: page
title: "Patient stays"
category: new
date: 2015-07-09 10:16:13
order: 2
---


# How is a patient defined in MIMIC II?

Each patient in MIMIC is associated with three identifiers: `SUBJECT_ID`, `HADM_ID` and `ICUSTAY_ID`. `SUBJECT_ID` represents a unique patient, `HADM_ID` is unique to a hospital stay and finally `ICUSTAY_ID` is unique to an ICU stay. These identifiers are *strictly hierarchical*, that is each `ICUSTAY_ID` has only *one* `HADM_ID` and `SUBJECT_ID`, but a single `SUBJECT_ID` can have many `HADM_ID` (i.e. a patient can have many hospital stays).

# Where are the identifiers sourced from in MIMIC II v3.0?

First, a list of all patient medical record numbers (MRNs) is extracted from the database. A patient's MRN is used to create their `SUBJECT_ID`. Subsequently, a hospital wide database is used to extract all hospital stays for the given patient MRN, and this database defined a patients `HADM_ID`. Note that the hospital uses a unique identifier for a patient's hospital admission, and this identifier is the source of `HADM_ID`.

The hospital database also provides information regarding a patient's movement within the hospital (admission, transfers, discharge or ADT data). The ADT data is used to identify when a patient is in the ICU. For example, let's pretend we have `SUBJECT_ID` 0001 staying in the hospital:

SUBJECT_ID | HADM_ID | Type | Room Name | In Time | Out Time
----------- | ------ | ---- | --------- | ------- | --------
0001 | 3450 | Admit | ED | 15-01-2002 13:40:00 | 15-01-2002 15:20:00
0001 | 3450 | Transfer | MICU | 15-01-2002 15:20:00 | 18-01-2002 08:40:00
0001 | 3450 | Transfer | Ward | 18-01-2002 08:40:00 | 20-01-2002 14:23:00
0001 | 3450 | Discharge | | 20-01-2002 14:23:00 |

We can see the patient was admitted to the emergency department, transfered to the medical ICU, transferred to the ward and subsequently discharged. From this table, we would *define* an `ICUSTAY_ID` for the second row, which lasted from 15-01-2002 15:20:00 to 18-01-2002 08:40:00. This point is key: while `SUBJECT_ID` and `HADM_ID` are anonymized versions of hospital identifiers, we are creating `ICUSTAY_ID` based off patient locations.

Given that patients can be transferred in and out of the ICU for various reasons (surgery, imaging, etc), a rule was defined as follows: if a patient is transferred back into an ICU within 24 hours of their previous ICU exit, that stay is given the *same* `ICUSTAY_ID`. Otherwise, i.e. the patient is transferred back into the ICU more than 24 hours after their last ICU stay, that stay is given a *new* `ICUSTAY_ID`.

# How is this different from MIMIC II v2.6?
 
There are two major differences between the above and v2.6.

First, All `ICUSTAY_ID` have a corresponding `HADM_ID`, and all `HADM_ID` have a corresponding `SUBJECT_ID`. 
In MIMIC II v2.6, some `ICUSTAY_ID` did not have an associated `HADM_ID`, and some `HADM_ID` did not have an `ICUSTAY_ID`. This is very confusing, and a large amount of effort was made to ensure these identifiers would be linked. 

Hospital admissions (`HADM_ID`) are defined in v2.6 by the *ICU* database, where as in v3.0 they are defined by the *hospital* database. This has a few ramifications. As there were records in the ICU database which were missing in the hospital database, and vice versa. We have performed a union of these two sets: if a hospital record number was not present in both sets, it was excluded from the release. There were approximately 3,500 admissions in the ICU database which were not in the hospital database. It is unclear why this occurred - while some were clearly test admissions (First name "Test", second name "Patient") - and others had incorrect hospital record numbers (such as 123456) - a large amount seemed to be valid admissions. This is an ongoing issue in the current release, and we hope to locate these patients in a future hospital data extraction and re-integrate their admissions into the data.
One advantage of this approach is the integration of the previously unavailable admission/discharge/transfer (ADT) data. The ADT data contains all patient movement throughout the hospital. This data is the source of the new `TRANSFERS` table, which is similar to the old `CENSUSEVENTS` table. While the table still contains data regarding a patient's hospital admission, it now also includes information regarding inter-ward transfers (including to/from surgery) and has improved precision (earlier dates have been replaced by timestamps). This change is retroactive to all patients in the MIMIC database.
