---
layout: default
title: "Guidelines for the MIMIC-II database (v3.0)"
---

## What is MIMIC II?

The MIMIC II database (Multiparameter Intelligent Monitoring in Intensive Care) is a large single center multi-ICU database composed of over 40,000 intesive care unit (ICU) stays.
The MIMIC II database was collected as part of a Bioengineering Research Partnership (BRP) grant from the National Institute of Biomedical Imaging and Bioengineering entitled, “Integrating Data, Models and Reasoning in Intensive Care” (RO1-EB001659). 
The BRP project aimed to evaluate advanced intensive care unit (ICU) patient monitoring systems, with the eventual goal of improving the efficiency, accuracy and timeliness of patient care delivered in the ICU.
The project was established in October 2003 and included an interdisciplinary team from academia (MIT), industry (Philips Medical Systems) and clinical medicine (Beth Israel Deaconess Medical Center).

## MIMIC-II research database

The MIMIC-II research database is notable for three factors: 

- it is publicly and freely available; 
- it encompasses a diverse and very large population of ICU patients; 
- and it contains high temporal resolution data including lab results, electronic documentation, and bedside monitor trends and waveforms. 

The database supports a diverse range of analytic studies spanning epidemiology, clinical decision-rule improvement, and electronic tool development.

This website is intended to help researchers to set up and use version 3.0 of the MIMIC-II database. Please [help us](bac/contributing.html) to develop and improve the documentation.

**A PDF version of these guidelines can be downloaded using the following link**: [http://mimic2.github.io/v3.0/pdf/guidelines.pdf](http://mimic2.github.io/v3.0/pdf/guidelines.pdf)

## Why are there multiple versions?

MIMIC II v2.6 contains patient data between 2001-2008. MIMIC II v3.0 is the newest release, and contains the same patient data as MIMIC II v2.6 with the addition of patient data from 2008-2012. *However*, the electronic software used by the ICUs who provide their data in MIMIC II changed in 2008. As a result, the data in 2008-2012 is not intrinsically linked to the data from 2001-2008, and consequently the database are not fully backwards compatible.
