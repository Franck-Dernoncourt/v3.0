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
 
There are two major differences between the above and v2.6:

 1. Hospital admissions (`HADM_ID`) are defined in v2.6 by the 