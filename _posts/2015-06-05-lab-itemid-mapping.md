---
layout: page
title: "Lab ITEMID mapping"
category: app
date: 2015-06-05 15:53:24
---

The following table is a current mapping of ITEMIDs from the old MIMIC2v26 LABEVENTS table to the new MIMIC2v30 LABEVENTS table.
Every effort has been made to map the data to LOINC codes. LOINC codes are advantageous as they provide an ontology for recorded lab values. However, careful inspection shows that a matched pair of ITEMIDs may have distinct LOINC codes. This is usually attributable to the laboratory assigning a new LOINC code, which is done for many reasons, including changing the reagents of a laboratory test or changing the technique used to acquire the result.


ITEMID (v30) | LABEL | CATEGORY | FLUID | NEW_LOINC_V30 | LABITEMID_FROM_V26 | LOINC_CODE_FROM_V26 | LOINC_DESC_FROM_V26 | TEST_NAME_ALREADY_MAPPED | OLD_LOINC_CODE_ALREADY_MAPPED | COMMENT
------------ | ----- | -------- | ----- | ------------- | ------------------ | ------------------- | ------------------- | ------------------------ | ----------------------------- | -------
50804 | CARBOXYHEMOGLOBIN | BLOOD GAS | BLOOD |  |  | 50003 |  | Carboxyhemoglobin/Hemoglobin.total in Blood | CARBOXYHB | 20563-3 | 
50811 | INTUBATED | BLOOD GAS | BLOOD |  |  | 50008 |  |  | INTUBATED |  | 
50812 | LACTATE | BLOOD GAS | BLOOD |  |  | 50010 |  | Lactate [Moles/volume] in Blood | LACTATE | 32693-4 | 
50814 | O2 FLOW | BLOOD GAS | BLOOD |  |  | 50014 |  | Inhaled oxygen flow rate | O2 FLOW | 3151-8 | 
50817 | PCO2 | BLOOD GAS | BLOOD |  |  | 50016 |  | Carbon dioxide [Partial pressure] in Blood | PCO2 | 11557-6 | 
50818 | PEEP | BLOOD GAS | BLOOD |  |  | 50017 |  | Positive end expiratory pressure setting Ventilator | PEEP | 20077-4 | 
50820 | PO2 | BLOOD GAS | BLOOD |  |  | 50019 |  | Oxygen [Partial pressure] in Blood | PO2 | 11556-8 | 
50826 | TIDAL VOLUME | BLOOD GAS | BLOOD |  |  | 50024 |  | Tidal volume setting Ventilator | TIDAL VOL | 20112-9 | 
50838 | ALBUMIN, ASCITES | CHEMISTRY | ASCITES |  |  | 50037 |  | Albumin [Mass/volume] in Peritoneal fluid | ALBUMIN | 1749-1 | 
50839 | AMYLASE, ASCITES | CHEMISTRY | ASCITES |  |  | 50038 |  | Amylase [Enzymatic activity/volume] in Peritoneal fluid | AMYLASE | 1797-0 | 
50842 | CHLORIDE, ASCITES | CHEMISTRY | ASCITES |  |  | 50039 |  | Chloride [Moles/volume] in Peritoneal fluid | CHLORIDE | 33366-6 | 
50843 | CHOLESTEROL, ASCITES | CHEMISTRY | ASCITES |  |  | 50040 |  | Cholesterol [Mass/volume] in Peritoneal fluid | CHOLEST | 14441-0 | 
50845 | GLUCOSE, ASCITES | CHEMISTRY | ASCITES |  |  | 50043 |  | Glucose [Mass/volume] in Peritoneal fluid | GLUCOSE | 2347-3 | 
50847 | LIPASE, ASCITES | CHEMISTRY | ASCITES |  |  | 50045 |  | Triacylglycerol lipase [Enzymatic activity/volume] in Peritoneal fluid | LIPASE | 32722-1 | 
50849 | OSMOLALITY, ASCITES | CHEMISTRY | ASCITES |  |  | 50047 |  | Osmolality of Peritoneal fluid | OSMOLAL | 2691-4 | 
50850 | POTASSIUM, ASCITES | CHEMISTRY | ASCITES |  |  | 50048 |  | Potassium [Moles/volume] in Peritoneal fluid | POTASSIUM | 49789-1 | 
50851 | SODIUM, ASCITES | CHEMISTRY | ASCITES |  |  | 50049 |  | Sodium [Moles/volume] in Peritoneal fluid | SODIUM | 49790-9 | 
50853 | TRIGLYCERIDES, ASCITES | CHEMISTRY | ASCITES |  |  | 50052 |  | Triglyceride [Mass/volume] in Peritoneal fluid | TRIGLYCER | 14447-7 | 
50854 | UREA NITROGEN, ASCITES | CHEMISTRY | ASCITES |  |  | 50053 |  | Urea nitrogen [Mass/volume] in Peritoneal fluid | UREA N | 12265-5 | 
50861 | ACETONE | CHEMISTRY | BLOOD |  |  | 50057 | 5567-3 | Acetone [Presence] in Serum or Plasma | ACETONE | 5567-3 | 
50863 | ACID PHOSPHATASE, NON-PROSTATIC | CHEMISTRY | BLOOD |  |  | 50058 |  | Acid phosphatase [Enzymatic activity/volume] in Blood | ACID PHOS | 1711-1 | 
50868 | ALPHA-FETOPROTEIN | CHEMISTRY | BLOOD |  |  | 50059 | 1834-1 | Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma | AFP | 1834-1 | 
50866 | ALBUMIN | CHEMISTRY | BLOOD |  |  | 50060 | 1751-7 | Albumin [Mass/volume] in Serum or Plasma | ALBUMIN | 1751-7 | 
50865 | ALANINE AMINOTRANSFERASE (ALT) | CHEMISTRY | BLOOD |  |  | 50062 | 1742-6 | Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma | ALT(SGPT) | 1742-6 | 
50870 | AMMONIA | CHEMISTRY | BLOOD |  |  | 50064 |  | Ammonia [Moles/volume] in Plasma | AMMONIA | 16362-6 | 
50878 | ANTI-NUCLEAR ANTIBODY, TITER | CHEMISTRY | BLOOD |  |  | 50066 | 8061-4 | Nuclear Ab [Presence] in Serum | ANA | 8061-4 | 
50875 | ANTI-MITOCHONDRIAL ANTIBODY | CHEMISTRY | BLOOD |  |  | 50069 |  | Thyroperoxidase Ab [Presence] in Serum | ANTI-MC | 32042-4 | 
50882 | ASPARATE AMINOTRANSFERASE (AST) | CHEMISTRY | BLOOD |  |  | 50073 | 1920-8 | Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma | AST(SGOT) | 1920-8 | 
50894 | C3 | CHEMISTRY | BLOOD |  |  | 50075 |  | Complement C3 [Mass/volume] in Serum or Plasma | C3 | 4485-9 | 
50895 | C4 | CHEMISTRY | BLOOD |  |  | 50076 |  | Complement C4 [Mass/volume] in Serum or Plasma | C4 | 4498-2 | 
50903 | CARBAMAZEPINE | CHEMISTRY | BLOOD |  |  | 50081 | 3432-2 | Carbamazepine [Mass/volume] in Serum or Plasma | CARBAMZPN | 3432-2 | 
50904 | CARCINOEMBYRONIC ANTIGEN (CEA) | CHEMISTRY | BLOOD |  |  | 50082 | 2039-6 | Carcinoembryonic Ag [Mass/volume] in Serum or Plasma | CEA | 2039-6 | 
50910 | CHOLESTEROL, LDL, MEASURED | CHEMISTRY | BLOOD |  |  | 50085 |  | Cholesterol [Mass/volume] in Serum or Plasma | CHOLEST | 2093-3 | 
50911 | CHOLESTEROL, TOTAL | CHEMISTRY | BLOOD |  |  | 50085 | 2093-3 | Cholesterol [Mass/volume] in Serum or Plasma | CHOLEST | 2093-3 | 
50914 | CREATINE KINASE (CK) | CHEMISTRY | BLOOD |  |  | 50086 | 2157-6 | Creatine kinase [Enzymatic activity/volume] in Serum or Plasma | CK(CPK) | 2157-6 | 
50913 | CORTISOL | CHEMISTRY | BLOOD |  |  | 50089 | 2143-6 | Cortisol [Mass/volume] in Serum or Plasma | CORTISOL | 2143-6 | 
50916 | CREATININE | CHEMISTRY | BLOOD |  |  | 50090 | 2160-0 | Creatinine [Mass/volume] in Serum or Plasma | CREAT | 2160-0 | 
50920 | DHEA-SULFATE | CHEMISTRY | BLOOD |  |  | 50094 | 2191-5 | Dehydroepiandrosterone sulfate [Mass/volume] in Serum or Plasma | DHEA-SO4 | 2191-5 | 
50921 | DIGOXIN | CHEMISTRY | BLOOD |  |  | 50095 | 10535-3 | Digoxin [Mass/volume] in Serum or Plasma | DIGOXIN | 10535-3 | 
50887 | BILIRUBIN, DIRECT | CHEMISTRY | BLOOD |  |  | 50096 | 1968-7 | Direct bilirubin [Mass/volume] in Serum or Plasma | DIR BILI | 1968-7 | 
50923 | EDTA HOLD | CHEMISTRY | BLOOD |  |  | 50097 |  |  | EDTA HOLD |  | 
50925 | ESTRADIOL | CHEMISTRY | BLOOD |  |  | 50098 |  | Estradiol [Mass/volume] in Serum or Plasma | ESTRADL | 2243-4 | 
50928 | FERRITIN | CHEMISTRY | BLOOD |  |  | 50101 | 2276-4 | Ferritin [Mass/volume] in Serum or Plasma | FERRITIN | 2276-4 | 
50929 | FOLATE | CHEMISTRY | BLOOD |  |  | 50103 | 2284-8 | Folate [Mass/volume] in Serum or Plasma | FOLATE | 2284-8 | 
51000 | THYROXINE (T4), FREE | CHEMISTRY | BLOOD |  |  | 50104 | 3024-7 | Thyroxine free [Mass/volume] in Serum or Plasma | FREE T4 | 3024-7 | 
50898 | CALCULATED FREE TESTOSTERONE | CHEMISTRY | BLOOD |  |  | 50105 | 2991-8 | Testosterone Free [Mass/volume] in Serum or Plasma | FREE TEST | 2991-8 | 
50994 | TESTOSTERONE, FREE | CHEMISTRY | BLOOD |  |  | 50105 | 2991-8 | Testosterone Free [Mass/volume] in Serum or Plasma | FREE TEST | 2991-8 | 
50933 | GASTRIN | CHEMISTRY | BLOOD |  |  | 50107 | 2333-3 | Gastrin [Mass/volume] in Serum or Plasma | GASTRIN | 2333-3 | 
50932 | GAMMA GLUTAMYLTRANSFERASE | CHEMISTRY | BLOOD |  |  | 50109 | 2324-2 | Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma | GGT | 2324-2 | 
50935 | GLOBULIN | CHEMISTRY | BLOOD |  |  | 50111 | 2336-6 | Globulin [Mass/volume] in Serum | GLOBULIN | 2336-6 | 
50938 | GREEN TOP HOLD (PLASMA) | CHEMISTRY | BLOOD |  |  | 50113 |  |  | GREEN HLD |  | 
50940 | HAPTOGLOBIN | CHEMISTRY | BLOOD |  |  | 50115 | 4542-7 | Haptoglobin [Mass/volume] in Serum or Plasma | HAPTOGLOB | 4542-7 | 
50948 | HEPATITIS C VIRUS ANTIBODY | CHEMISTRY | BLOOD |  |  | 50121 | 16128-1 | Hepatitis C virus Ab [Presence] in Serum | HCV Ab | 16128-1 | 
50888 | BILIRUBIN, INDIRECT | CHEMISTRY | BLOOD |  |  | 50127 | 1971-1 | Indirect bilirubin [Mass/volume] in Serum or Plasma | INDIR BIL | 1971-1 | 
50957 | IRON | CHEMISTRY | BLOOD |  |  | 50128 | 2498-4 | Iron [Mass/volume] in Serum or Plasma | IRON | 2498-4 | 
50954 | IMMUNOGLOBULIN A | CHEMISTRY | BLOOD |  |  | 50129 | 2458-8 | IgA [Mass/volume] in Serum | IgA | 2458-8 | 
50955 | IMMUNOGLOBULIN G | CHEMISTRY | BLOOD |  |  | 50130 | 2465-3 | IgG [Mass/volume] in Serum | IgG | 2465-3 | 
50956 | IMMUNOGLOBULIN M | CHEMISTRY | BLOOD |  |  | 50131 | 2472-9 | IgM [Mass/volume] in Serum | IgM | 2472-9 | 
50959 | LACTATE DEHYDROGENASE (LD) | CHEMISTRY | BLOOD |  |  | 50134 | 2532-0 | Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma | LD(LDH) | 2532-0 | 
50961 | LIPASE | CHEMISTRY | BLOOD |  |  | 50138 |  | Triacylglycerol lipase [Enzymatic activity/volume] in Serum or Plasma | LIPASE | 3040-3 | 
50967 | N-ACETYLPROCAINAMIDE (NAPA) | CHEMISTRY | BLOOD |  |  | 50142 | 3834-9 | N-acetylprocainamide [Mass/volume] in Serum or Plasma | NAPA | 3834-9 | 
50969 | OSMOLALITY, MEASURED | CHEMISTRY | BLOOD |  |  | 50144 |  | Osmolality of Serum or Plasma | OSMOLAL | 2692-2 | 
50974 | PHENYTOIN, PERCENT FREE | CHEMISTRY | BLOOD |  |  | 50147 |  | Phenytoin [Mass/volume] in Serum or Plasma | PHENYTOIN | 3968-5 | 
50975 | PHOSPHATE | CHEMISTRY | BLOOD |  |  | 50148 | 2777-1 | Phosphate [Mass/volume] in Serum or Plasma | PHOSPHATE | 2777-1 | 
50976 | POTASSIUM | CHEMISTRY | BLOOD |  |  | 50149 | 2823-3 | Potassium [Moles/volume] in Serum or Plasma | POTASSIUM | 2823-3 | 
50978 | PROCAINAMIDE | CHEMISTRY | BLOOD |  |  | 50151 | 3982-6 | Procainamide [Mass/volume] in Serum or Plasma | PROCAINMD | 3982-6 | 
50979 | PROLACTIN | CHEMISTRY | BLOOD |  |  | 50152 | 2842-3 | Prolactin [Mass/volume] in Serum or Plasma | PROLACTIN | 2842-3 | 
50980 | PROSTATE SPECIFIC ANTIGEN | CHEMISTRY | BLOOD |  |  | 50153 | 2857-1 | Prostate specific Ag [Mass/volume] in Serum or Plasma | PSA | 2857-1 | 
50970 | PARATHYROID HORMONE | CHEMISTRY | BLOOD |  |  | 50154 | 2731-8 | Parathyrin.intact [Mass/volume] in Serum or Plasma | PTH | 2731-8 | 
50989 | SODIUM | CHEMISTRY | BLOOD |  |  | 50159 | 2951-2 | Sodium [Moles/volume] in Serum or Plasma | SODIUM | 2951-2 | 
51006 | TRIIODOTHYRONINE (T3) | CHEMISTRY | BLOOD |  |  | 50162 | 3053-6 | Triiodothyronine [Mass/volume] in Serum or Plasma | T3 | 3053-6 | 
50995 | THEOPHYLLINE | CHEMISTRY | BLOOD |  |  | 50166 | 4049-3 | Theophylline [Mass/volume] in Serum or Plasma | THEOPHYL | 4049-3 | 
50996 | THYROGLOBULIN | CHEMISTRY | BLOOD |  |  | 50167 | 3013-0 | Thyroglobulin [Mass/volume] in Serum or Plasma | THYROGLB | 3013-0 | 
50889 | BILIRUBIN, TOTAL | CHEMISTRY | BLOOD |  |  | 50170 | 1975-2 | Bilirubin [Mass/volume] in Serum or Plasma | TOT BILI | 1975-2 | 
50982 | PROTEIN, TOTAL | CHEMISTRY | BLOOD |  |  | 50171 | 2885-2 | Protein [Mass/volume] in Serum or Plasma | TOT PROT | 2885-2 | 
50886 | BICARBONATE | CHEMISTRY | BLOOD |  |  | 50172 | 1963-8 | Bicarbonate [Moles/volume] in Serum | TOTAL CO2 | 1963-8 | 
51011 | UREA NITROGEN | CHEMISTRY | BLOOD |  |  | 50177 | 3094-0 | Urea nitrogen [Mass/volume] in Serum or Plasma | UREA N | 3094-0 | 
51012 | URIC ACID | CHEMISTRY | BLOOD |  |  | 50178 | 3084-1 | Urate [Mass/volume] in Serum or Plasma | URIC ACID | 3084-1 | 
51013 | VALPROIC ACID | CHEMISTRY | BLOOD |  |  | 50179 | 4086-5 | Valproate [Mass/volume] in Serum or Plasma | VALPROATE | 4086-5 | 
50856 | % HEMOGLOBIN A1C | CHEMISTRY | BLOOD |  |  | 50183 | 4548-4 | Hemoglobin A1c (glycated HgB)/Hemoglobin.total [Moles] in Blood | [A1c] | 4548-4 | 
51244 | HEMOGLOBIN | HEMATOLOGY | BLOOD |  |  | 50184 | 718-7 | Hemoglobin [Mass/volume] in Blood | [Hgb] | 718-7 | 
51003 | TRANSFERRIN | CHEMISTRY | BLOOD |  |  | 50190 | 2500-7 | Iron binding capacity [Mass/volume] in Serum or Plasma | calTIBC | 2500-7 | 
50899 | CALCULATED TBG | CHEMISTRY | BLOOD |  |  | 50191 | 3027-0 | Thyroxine/Thyroxine binding globulin [Mass ratio] in Serum or Plasma | calcTBG | 3027-0 | 
50973 | PHENYTOIN, FREE | CHEMISTRY | BLOOD |  |  | 50194 | 3969-3 | Phenytoin Free [Mass/volume] in Serum or Plasma | freepheny | 3969-3 | 
51029 | AMYLASE, JOINT FLUID | CHEMISTRY | JOINT FLUID |  |  | 50206 |  | Amylase [Enzymatic activity/volume] in Synovial fluid | AMYLASE | 14388-3 | 
51031 | GLUCOSE, JOINT FLUID | CHEMISTRY | JOINT FLUID |  |  | 50208 |  | Glucose [Mass/volume] in Synovial fluid | GLUCOSE | 2348-1 | 
51034 | ALBUMIN, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50211 |  | Albumin [Mass/volume] in Body fluid | ALBUMIN | 1747-5 | 
51035 | AMYLASE, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50212 |  | Amylase [Enzymatic activity/volume] in Body fluid | AMYLASE | 1795-4 | 
51038 | CALCIUM, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50213 |  | Calcium [Mass/volume] in Body fluid | CALCIUM | 15155-5 | 
51039 | CHLORIDE, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50214 |  | Chloride [Moles/volume] in Body fluid | CHLORIDE | 2072-7 | 
51040 | CHOLESTEROL, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50215 |  | Cholesterol [Mass/volume] in Body fluid | CHOLEST | 12183-0 | 
51043 | GLUCOSE, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50217 |  | Glucose [Mass/volume] in Body fluid | GLUCOSE | 2344-0 | 
51045 | LIPASE, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50219 |  | Triacylglycerol lipase [Enzymatic activity/volume] in Body fluid | LIPASE | 15212-4 | 
51048 | OSMOLALITY, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50222 |  | Osmolality of Body fluid | OSMOLAL | 15200-9 | 
51049 | PHOSPHATE, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50224 |  | Phosphate [Mass/volume] in Body fluid | PHOSPHATE | 12242-4 | 
51050 | POTASSIUM, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50225 |  | Potassium [Moles/volume] in Body fluid | POTASSIUM | 2821-7 | 
51053 | TRIGLYCER | CHEMISTRY | OTHER BODY FLUID |  |  | 50231 |  | Triglyceride [Mass/volume] in Body fluid | TRIGLYCER | 12228-3 | 
51054 | UREA NITROGEN, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | 50232 |  | Urea nitrogen [Mass/volume] in Body fluid | UREA N | 3093-2 | 
51056 | ALBUMIN, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50234 |  | Albumin [Mass/volume] in Pleural fluid | ALBUMIN | 1748-3 | 
51057 | AMYLASE, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50235 |  | Amylase [Enzymatic activity/volume] in Pleural fluid | AMYLASE | 1796-2 | 
51060 | CHLORIDE, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50236 |  | Chloride [Moles/volume] in Pleural fluid | CHLORIDE | 53627-6 | 
51061 | CHOLESTEROL, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50237 |  | Cholesterol [Mass/volume] in Pleural fluid | CHOLEST | 9618-0 | 
51063 | GLUCOSE, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50240 |  | Glucose [Mass/volume] in Pleural fluid | GLUCOSE | 2346-5 | 
51067 | POTASSIUM, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50243 |  |  | POTASSIUM |  | 
51068 | SODIUM, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50244 |  |  | SODIUM |  | 
51070 | TRIGLYCERIDES, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50247 |  | Triglyceride [Mass/volume] in Pleural fluid | TRIGLYCER | 9619-8 | 
51073 | CHLORIDE, STOOL | CHEMISTRY | STOOL |  |  | 50248 |  | Chloride [Moles/volume] in Stool | CHLORIDE | 15158-9 | 
51074 | OSMOLALITY, STOOL | CHEMISTRY | STOOL |  |  | 50250 |  | Osmolality of Stool | OSMOLAL | 2693-0 | 
51075 | POTASSIUM, STOOL | CHEMISTRY | STOOL |  |  | 50251 |  | Potassium [Moles/volume] in Stool | POTASSIUM | 15202-5 | 
51076 | SODIUM, STOOL | CHEMISTRY | STOOL |  |  | 50252 |  | Sodium [Moles/volume] in Stool | SODIUM | 15207-4 | 
51084 | AMYLASE, URINE | CHEMISTRY | URINE |  |  | 50261 |  | Amylase [Enzymatic activity/volume] in Urine | AMYLASE | 1799-6 | 
51090 | CHLORIDE, URINE | CHEMISTRY | URINE |  |  | 50263 | 2078-4 | Chloride [Moles/volume] in Urine | CHLORIDE | 2078-4 | 
51094 | CREATININE, URINE | CHEMISTRY | URINE |  |  | 50264 | 2161-8 | Creatinine [Mass/volume] in Urine | CREAT | 2161-8 | 
51096 | GLUCOSE, URINE | CHEMISTRY | URINE |  |  | 50266 |  | Glucose [Mass/volume] in Urine | GLUCOSE | 2350-7 | 
51103 | MYOGLOBIN, URINE | CHEMISTRY | URINE |  |  | 50271 |  | Myoglobin [Presence] in Urine | MYOGLOBIN | 2640-1 | 
51105 | OSMOLALITY, URINE | CHEMISTRY | URINE |  |  | 50272 |  | Osmolality of Urine | OSMOLAL | 2695-5 | 
51107 | PHOSPHATE, URINE | CHEMISTRY | URINE |  |  | 50273 | 2778-9 | Phosphate [Mass/volume] in Urine | PHOSPHATE | 2778-9 | 
51108 | PORPHOBILINOGEN SCREEN | CHEMISTRY | URINE |  |  | 50274 |  | Porphobilinogen [Presence] in Urine | PORPHOBIL | 2809-2 | 
51109 | POTASSIUM, URINE | CHEMISTRY | URINE |  |  | 50275 | 2828-2 | Potassium [Moles/volume] in Urine | POTASSIUM | 2828-2 | 
51111 | PROTEIN/CREATININE RATIO | CHEMISTRY | URINE |  |  | 50276 | 2890-2 | Protein/Creatinine [Mass ratio] in Urine | PROT/CREA | 2890-2 | 
51112 | SODIUM, URINE | CHEMISTRY | URINE |  |  | 50277 | 2955-3 | Sodium [Moles/volume] in Urine | SODIUM | 2955-3 | 
51115 | UHOLD | CHEMISTRY | URINE |  |  | 50282 |  |  | UHOLD |  | 
51116 | UREA NITROGEN, URINE | CHEMISTRY | URINE |  |  | 50283 |  | Urea nitrogen [Mass/volume] in Urine | UREA N | 3095-7 | 
51117 | URIC ACID, URINE | CHEMISTRY | URINE |  |  | 50284 | 3086-6 | Urate [Mass/volume] in Urine | URIC ACID | 3086-6 | 
51086 | BARBITURATE SCREEN, URINE | CHEMISTRY | URINE |  |  | 50290 | 3377-9 | Barbiturates [Presence] in Urine | barbitrt | 3377-9 | 
51124 | BANDS | HEMATOLOGY | ASCITES |  |  | 50299 |  |  | BANDS |  | 
51130 | MACROPHAGE | HEMATOLOGY | ASCITES |  |  | 50304 |  | Macrophages/100 leukocytes in Peritoneal fluid by Manual count | MACROPHAG | 40517-5 | 
51131 | MESOTHELIAL CELL | HEMATOLOGY | ASCITES |  |  | 50305 |  | Mesothelial cells/100 leukocytes in Peritoneal fluid | MESOTHELI | 30432-9 | 
51136 | OTHER | HEMATOLOGY | ASCITES |  |  | 50310 |  |  | OTHER |  | 
51137 | PLASMA | HEMATOLOGY | ASCITES |  |  | 50311 |  | Plasma cells/100 leukocytes in Peritoneal fluid by Manual count | PLASMA | 40518-3 | 
51138 | POLYS | HEMATOLOGY | ASCITES |  |  | 50312 |  | Polymorphonuclear cells/100 leukocytes in Peritoneal fluid | POLYS | 26520-7 | 
51189 | CD3 CELLS, PERCENT | HEMATOLOGY | BLOOD |  |  | 50317 | 8122-4 | CD3 cells [#/volume] in Blood | ABS CD3 | 8122-4 | 
51193 | CD4 CELLS, PERCENT | HEMATOLOGY | BLOOD |  |  | 50318 | 8127-3 | CD4 cells [#/volume] in Blood | ABS CD4 | 8127-3 | 
51207 | CD8 CELLS, PERCENT | HEMATOLOGY | BLOOD |  |  | 50319 | 8137-2 | CD8 cells [#/volume] in Blood | ABS CD8 | 8137-2 | 
51147 | ACANTHOCYTES | HEMATOLOGY | BLOOD |  |  | 50324 | 7789-1 | Acanthocytes [Presence] in Blood by Light microscopy | ACANTHOCY | 7789-1 | 
51148 | ADP | HEMATOLOGY | BLOOD |  |  | 50325 |  |  | ADP |  | 
51154 | APT TEST | HEMATOLOGY | BLOOD |  |  | 50328 |  |  | APT TEST |  | 
51160 | BITE CELLS | HEMATOLOGY | BLOOD |  |  | 50334 | 10371-3 | Bite cells [Presence] in Blood by Light microscopy | BITE | 10371-3 | 
51164 | BURR CELLS | HEMATOLOGY | BLOOD |  |  | 50337 | 7790-9 | Burr cells [Presence] in Blood by Light microscopy | BURR | 7790-9 | 
51165 | CD10 | HEMATOLOGY | BLOOD |  |  | 50338 |  | CD10 cells/100 cells in Blood | CD10 | 8107-5 | 
51167 | CD117 | HEMATOLOGY | BLOOD |  |  | 50339 |  | CD117 cells/100 cells in Blood | CD117 | 17107-4 | 
51169 | CD13 | HEMATOLOGY | BLOOD |  |  | 50341 |  | CD13 cells/100 cells in Blood | CD13 | 8110-9 | 
51170 | CD138 | HEMATOLOGY | BLOOD |  |  | 50342 |  | CD138 cells/100 cells in Blood | CD138 | 42869-8 | 
51171 | CD14 | HEMATOLOGY | BLOOD |  |  | 50343 |  | CD14 cells/100 cells in Blood | CD14 | 8111-7 | 
51172 | CD15 | HEMATOLOGY | BLOOD |  |  | 50344 |  | CD15 cells/100 cells in Blood | CD15 | 17117-3 | 
51174 | CD16 | HEMATOLOGY | BLOOD |  |  | 50345 |  | CD16 cells/100 cells in Blood | CD16 | 8115-8 | 
51176 | CD16/56% | HEMATOLOGY | BLOOD |  |  | 50346 |  | CD16+CD56+ cells/100 cells in Blood | CD16/56 | 18267-5 | 
51177 | CD19 | HEMATOLOGY | BLOOD |  |  | 50347 |  | CD19 cells/100 cells in Blood | CD19 | 8117-4 | 
51180 | CD2 | HEMATOLOGY | BLOOD |  |  | 50348 |  | CD2 cells/100 cells in Blood | CD2 | 8118-2 | 
51181 | CD20 | HEMATOLOGY | BLOOD |  |  | 50349 |  | CD20 cells/100 cells in Blood | CD20 | 8119-0 | 
51184 | CD22 | HEMATOLOGY | BLOOD |  |  | 50350 |  | CD22 cells/100 cells in Blood | CD22 | 14017-8 | 
51185 | CD23 | HEMATOLOGY | BLOOD |  |  | 50351 |  | CD23 cells/100 cells in Blood | CD23 | 14018-6 | 
51143 | ABSOLUTE CD3 COUNT | HEMATOLOGY | BLOOD |  |  | 50352 | 8124-0 | CD3 cells/100 cells in Blood | CD3 | 8124-0 | 
51190 | CD33 | HEMATOLOGY | BLOOD |  |  | 50353 |  | CD33 cells/100 cells in Blood | CD33 | 8102-6 | 
51192 | CD38 | HEMATOLOGY | BLOOD |  |  | 50355 |  | CD38 cells/100 cells in Blood | CD38 | 8126-5 | 
51144 | ABSOLUTE CD4 COUNT | HEMATOLOGY | BLOOD |  |  | 50356 | 8128-1 | CD4 cells/100 cells in Blood | CD4 | 8128-1 | 
51194 | CD4/CD8 RATIO | HEMATOLOGY | BLOOD |  |  | 50357 |  | CD4 cells/CD8 Cells [# Ratio] in Blood | CD4/CD8 | 8129-9 | 
51195 | CD41 | HEMATOLOGY | BLOOD |  |  | 50358 |  | CD41 cells/100 cells in Blood | CD41 | 17148-8 | 
51196 | CD45 | HEMATOLOGY | BLOOD |  |  | 50359 |  | CD45 cells/100 cells in Blood | CD45 | 8130-7 | 
51197 | CD5 | HEMATOLOGY | BLOOD |  |  | 50360 |  | CD5 cells/100 cells in Blood | CD5 | 8132-3 | 
51200 | CD55 | HEMATOLOGY | BLOOD |  |  | 50361 |  | CD55 cells/100 cells in Blood | CD55 | 17175-1 | 
51201 | CD56 | HEMATOLOGY | BLOOD |  |  | 50362 |  | CD56 cells/100 cells in Blood | CD56 | 8133-1 | 
51203 | CD59 | HEMATOLOGY | BLOOD |  |  | 50363 |  | CD59 cells/100 cells in Blood | CD59 | 17177-7 | 
51204 | CD64 | HEMATOLOGY | BLOOD |  |  | 50364 |  | CD64 cells/100 cells in Blood | CD64 | 17183-5 | 
51205 | CD7 | HEMATOLOGY | BLOOD |  |  | 50365 |  | CD7 cells/100 cells in Blood | CD7 | 8135-6 | 
51206 | CD71 | HEMATOLOGY | BLOOD |  |  | 50366 |  | CD71 cells/100 cells in Blood | CD71 | 8136-4 | 
51145 | ABSOLUTE CD8 COUNT | HEMATOLOGY | BLOOD |  |  | 50367 | 8138-0 | CD8 cells/100 cells in Blood | CD8 | 8138-0 | 
51208 | COLLAGEN | HEMATOLOGY | BLOOD |  |  | 50369 |  |  | COLLAGEN |  | 
51554 | D-DIMER | HEMATOLOGY | BLOOD |  |  | 50370 | 48065-7 | Fibrin D-dimer FEU [Mass/volume] in Platelet poor plasma | D-DIMER | 48065-7 | 
51234 | FETAL HEMOGLOBIN | HEMATOLOGY | BLOOD |  |  | 50377 |  | Hemoglobin F/Hemoglobin.total in Blood | FETAL HGB | 4576-5 | 
51236 | FIBRINOGEN, FUNCTIONAL | HEMATOLOGY | BLOOD |  |  | 50378 |  | Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay | FIBRINOGE | 3255-7 | 
51237 | FMC-7 | HEMATOLOGY | BLOOD |  |  | 50379 |  | FMC7 cells/100 cells in Blood | FMC-7 | 17220-5 | 
51239 | GLYCO A | HEMATOLOGY | BLOOD |  |  | 50381 |  | CD235a cells/100 cells in Blood | GLYCO A | 17221-3 | 
51250 | HEPARIN | HEMATOLOGY | BLOOD |  |  | 50385 |  | Heparin [Units/volume] in Platelet poor plasma | HEPARIN | 13055-9 | 
51252 | HLA-DR | HEMATOLOGY | BLOOD |  |  | 50392 |  | HLA-DR [Presence] | HLA-DR | 32621-5 | 
51253 | HOWELL-JOLLY BODIES | HEMATOLOGY | BLOOD |  |  | 50394 | 7793-3 | Howell-Jolly bodies [Presence] in Blood by Light microscopy | HOW-JOL | 7793-3 | 
51255 | HYPOCHROMIA | HEMATOLOGY | BLOOD |  |  | 50396 | 728-6 | Hypochromia [Presence] in Blood by Light microscopy | HYPOCHROM | 728-6 | 
51215 | FACTOR II | HEMATOLOGY | BLOOD |  |  | 50397 | 3289-6 | Prothrombin activity actual/normal in Platelet poor plasma by Coagulation assay | II | 3289-6 | this loinc code seems completely wrong
51260 | KAPPA | HEMATOLOGY | BLOOD |  |  | 50402 |  |  | KAPPA |  | 
51261 | LAMBDA | HEMATOLOGY | BLOOD |  |  | 50403 |  |  | LAMBDA |  | 
51269 | MACROOVALOCYTES | HEMATOLOGY | BLOOD |  |  | 50410 | 10376-2 | Oval macrocytes [Presence] in Blood by Light microscopy | MACROOVAL | 10376-2 | 
51282 | OVALOCYTES | HEMATOLOGY | BLOOD |  |  | 50423 | 774-0 | Ovalocytes [Presence] in Blood by Light microscopy | OVALOCYT | 774-0 | 
51283 | PAPPENHEIMER BODIES | HEMATOLOGY | BLOOD |  |  | 50424 | 7795-8 | Pappenheimer bodies [Presence] in Blood by Light microscopy | PAPPENHEI | 7795-8 | 
51284 | PENCIL CELLS | HEMATOLOGY | BLOOD |  |  | 50426 | 10377-0 | Pencil cells [Presence] in Blood by Light microscopy | PENCIL | 10377-0 | 
51285 | PLASMA CELLS | HEMATOLOGY | BLOOD |  |  | 50427 |  | Plasma cells/100 leukocytes in Blood | PLASMA | 13047-6 | 
51289 | POIKILOCYTOSIS | HEMATOLOGY | BLOOD |  |  | 50431 | 779-9 | Poikilocytosis [Presence] in Blood by Light microscopy | POIKILOCY | 779-9 | 
51290 | POLYCHROMASIA | HEMATOLOGY | BLOOD |  |  | 50432 | 10378-8 | Polychromasia [Presence] in Blood by Light microscopy | POLYCHROM | 10378-8 | 
51311 | RISTOCETIN | HEMATOLOGY | BLOOD |  |  | 50449 |  |  | RISTOCETN |  | 
51312 | SCHISTOCYTES | HEMATOLOGY | BLOOD |  |  | 50450 | 800-3 | Schistocytes [Presence] in Blood by Light microscopy | SCHISTOCY | 800-3 | 
51314 | SERUM VISCOSITY | HEMATOLOGY | BLOOD |  |  | 50452 | 3128-6 | Viscosity of Serum | SERUM VIS | 3128-6 | 
51316 | SICKLE CELLS | HEMATOLOGY | BLOOD |  |  | 50453 | 801-1 | Sickle cells [Presence] in Blood by Light microscopy | SICKLE | 801-1 | 
51317 | SPHEROCYTES | HEMATOLOGY | BLOOD |  |  | 50455 | 802-9 | Spherocytes [Presence] in Blood by Light microscopy | SPHEROCYT | 802-9 | 
51158 | BASOPHILIC STIPPLING | HEMATOLOGY | BLOOD |  |  | 50456 | 703-9 | Basophilic stippling [Presence] in Blood by Light microscopy | STIPPLED | 703-9 | 
51318 | SUGAR WATER TEST | HEMATOLOGY | BLOOD |  |  | 50457 |  | Sucrose hemolysis [Presence] of Red Blood Cells | SUGAR H2O | 12260-6 | 
51319 | TARGET CELLS | HEMATOLOGY | BLOOD |  |  | 50458 | 10381-2 | Target cells [Presence] in Blood by Light microscopy | TARGET | 10381-2 | 
51321 | TEARDROP CELLS | HEMATOLOGY | BLOOD |  |  | 50459 | 7791-7 | Dacrocytes [Presence] in Blood by Light microscopy | TEARDROP | 7791-7 | 
51322 | THROMBIN | HEMATOLOGY | BLOOD |  |  | 50460 |  | Thrombin time in Platelet poor plasma by Coagulation assay | THROMBN | 3243-3 | 
51219 | FACTOR V | HEMATOLOGY | BLOOD |  |  | 50461 | 3193-0 | Coagulation factor V activity actual/normal in Platelet poor plasma by Coagulation assay | V | 3193-0 | 
51221 | FACTOR VII | HEMATOLOGY | BLOOD |  |  | 50462 | 3198-9 | Coagulation factor VII activity actual/normal in Platelet poor plasma by Coagulation assay | VII | 3198-9 | 
51223 | FACTOR VIII | HEMATOLOGY | BLOOD |  |  | 50463 | 3209-4 | Coagulation factor VIII activity actual/normal in Platelet poor plasma by Coagulation assay | VIII | 3209-4 | 
51324 | VON WILLEBRAND FACTOR ACTIVITY | HEMATOLOGY | BLOOD |  |  | 50466 | 6014-5 | von Willebrand factor (vWf) ristocetin cofactor actual/normal in Platelet poor plasma by Aggregation | VWF CO | 6014-5 | 
51228 | FACTOR XI | HEMATOLOGY | BLOOD |  |  | 50470 | 3226-8 | Coagulation factor XI activity actual/normal in Platelet poor plasma by Coagulation assay | XI | 3226-8 | 
51230 | FACTOR XII | HEMATOLOGY | BLOOD |  |  | 50471 | 3232-6 | Coagulation factor XII activity actual/normal in Platelet poor plasma by Coagulation assay | XII | 3232-6 | 
51330 | CD10 | HEMATOLOGY | BONE MARROW |  |  | 50474 |  | CD10 cells/100 cells in Bone marrow | CD10 | 51216-0 | 
51331 | CD103 | HEMATOLOGY | BONE MARROW |  |  | 50475 |  | CD103 cells/100 cells in Bone marrow | CD103 | 51221-0 | 
51332 | CD117 | HEMATOLOGY | BONE MARROW |  |  | 50476 |  | CD117 cells/100 cells in Bone marrow | CD117 | 42866-4 | 
51333 | CD11C | HEMATOLOGY | BONE MARROW |  |  | 50477 |  | CD11c cells/100 cells in Bone marrow | CD11C | 33202-3 | 
51334 | CD13 | HEMATOLOGY | BONE MARROW |  |  | 50478 |  | CD13 cells/100 cells in Bone marrow | CD13 | 51237-6 | 
51336 | CD14 | HEMATOLOGY | BONE MARROW |  |  | 50479 |  | CD14 cells/100 cells in Bone marrow | CD14 | 32507-6 | 
51337 | CD15 | HEMATOLOGY | BONE MARROW |  |  | 50480 |  | CD15 cells/100 cells in Bone marrow | CD15 | 51251-7 | 
51338 | CD16 | HEMATOLOGY | BONE MARROW |  |  | 50481 |  |  | CD16 |  | 
51339 | CD16/56 | HEMATOLOGY | BONE MARROW |  |  | 50482 |  | CD16+CD56+ cells/100 cells in Bone marrow | CD16/56 | 51255-8 | 
51340 | CD19 | HEMATOLOGY | BONE MARROW |  |  | 50483 |  | CD19 cells/100 cells in Bone marrow | CD19 | 32525-8 | 
51341 | CD2 | HEMATOLOGY | BONE MARROW |  |  | 50484 |  | CD2 cells/100 cells in Bone marrow | CD2 | 32527-4 | 
51342 | CD20 | HEMATOLOGY | BONE MARROW |  |  | 50485 |  |  | CD20 |  | 
51344 | CD23 | HEMATOLOGY | BONE MARROW |  |  | 50486 |  | CD23 cells/100 cells in Bone marrow | CD23 | 51268-1 | 
51346 | CD3 | HEMATOLOGY | BONE MARROW |  |  | 50487 |  | CD3 cells/100 cells in Bone marrow | CD3 | 32529-0 | 
51347 | CD33 | HEMATOLOGY | BONE MARROW |  |  | 50488 |  | CD33 cells/100 cells in Bone marrow | CD33 | 51293-9 | 
51348 | CD34 | HEMATOLOGY | BONE MARROW |  |  | 50489 |  | CD34 cells/100 cells in Bone marrow | CD34 | 57400-4 | 
51350 | CD4 | HEMATOLOGY | BONE MARROW |  |  | 50490 |  | CD4 cells/100 cells in Bone marrow | CD4 | 51301-0 | 
51351 | CD41 | HEMATOLOGY | BONE MARROW |  |  | 50491 |  | CD41 cells/100 cells in Bone marrow | CD41 | 51319-2 | 
51352 | CD45 | HEMATOLOGY | BONE MARROW |  |  | 50492 |  | CD45 cells/100 cells in Bone marrow | CD45 | 51340-8 | 
51353 | CD5 | HEMATOLOGY | BONE MARROW |  |  | 50493 |  | CD5 cells/100 cells in Bone marrow | CD5 | 35640-2 | 
51354 | CD55 | HEMATOLOGY | BONE MARROW |  |  | 50494 |  | CD55 cells/100 cells in Bone marrow | CD55 | 51344-0 | 
51355 | CD56 | HEMATOLOGY | BONE MARROW |  |  | 50495 |  |  | CD56 |  | 
51357 | CD59 | HEMATOLOGY | BONE MARROW |  |  | 50496 |  | CD59 cells/100 cells in Bone marrow | CD59 | 51358-0 | 
51358 | CD64 | HEMATOLOGY | BONE MARROW |  |  | 50497 |  | CD64 cells/100 cells in Bone marrow | CD64 | 51365-5 | 
51359 | CD7 | HEMATOLOGY | BONE MARROW |  |  | 50498 |  | CD7 cells/100 cells in Bone marrow | CD7 | 35641-0 | 
51360 | CD71 | HEMATOLOGY | BONE MARROW |  |  | 50499 |  |  | CD71 |  | 
51361 | CD8 | HEMATOLOGY | BONE MARROW |  |  | 50500 |  | CD8+HLA-DR+ cells/100 cells in Bone marrow | CD8 | 51372-1 | 
51362 | FMC-7 | HEMATOLOGY | BONE MARROW |  |  | 50501 |  |  | FMC-7 |  | 
51363 | GLYCO A | HEMATOLOGY | BONE MARROW |  |  | 50502 |  | CD235a cells/100 cells in Bone marrow | GLYCO A | 33208-0 | 
51364 | HLA-DR | HEMATOLOGY | BONE MARROW |  |  | 50503 |  | HLA-DR+ cells/100 cells in Bone marrow | HLA-DR | 51380-4 | 
51367 | KAPPA | HEMATOLOGY | BONE MARROW |  |  | 50506 |  |  | KAPPA |  | 
51368 | LAMBDA | HEMATOLOGY | BONE MARROW |  |  | 50507 |  |  | LAMBDA |  | 
51369 | WRIGHT GIEMSA | HEMATOLOGY | BONE MARROW |  |  | 50508 |  | Microscopic observation [Identifier] in Bone marrow by Wright Giemsa stain | WRIGHT-G | 10355-6 | 
51395 | BANDS | HEMATOLOGY | JOINT FLUID |  |  | 50530 |  | Neutrophils.band form/100 leukocytes in Synovial fluid | BANDS | 33361-7 | 
51405 | MACROPHAGE | HEMATOLOGY | JOINT FLUID |  |  | 50538 |  | Macrophages/100 leukocytes in Synovial fluid | MACROPHAG | 33376-5 | 
51406 | MESOTHELIAL CELLS | HEMATOLOGY | JOINT FLUID |  |  | 50539 |  | Mesothelial cells/100 leukocytes in Synovial fluid | MESOTHELI | 33365-8 | 
51410 | OTHER | HEMATOLOGY | JOINT FLUID |  |  | 50544 |  |  | OTHER |  | 
51411 | POLYS | HEMATOLOGY | JOINT FLUID |  |  | 50545 |  | Polymorphonuclear cells/100 leukocytes in Synovial fluid | POLYS | 26522-3 | 
51416 | BANDS | HEMATOLOGY | OTHER BODY FLUID |  |  | 50550 |  | Neutrophils.band form/100 leukocytes in Body fluid | BANDS | 26510-8 | 
51418 | CD10 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50552 |  | CD10 cells/100 cells in Body fluid | CD10 | 51217-8 | 
51420 | CD117 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50553 |  | CD117 cells/100 cells in Body fluid | CD117 | 42867-2 | 
51421 | CD11C | HEMATOLOGY | OTHER BODY FLUID |  |  | 50554 |  | CD11c cells/100 cells in Body fluid | CD11C | 51232-7 | 
51422 | CD13 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50555 |  | CD13 cells/100 cells in Body fluid | CD13 | 51238-4 | 
51423 | CD138 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50556 |  | CD138 cells/100 cells in Body fluid | CD138 | 42871-4 | 
51424 | CD14 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50557 |  | CD14 cells/100 cells in Body fluid | CD14 | 51248-3 | 
51425 | CD15 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50558 |  | CD15 cells/100 cells in Body fluid | CD15 | 51252-5 | 
51427 | CD16/56 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50559 |  | CD16+CD56+ cells/100 cells in Body fluid | CD16/56 | 18268-3 | 
51428 | CD19 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50560 |  | CD19 cells/100 cells in Body fluid | CD19 | 17829-3 | 
51429 | CD2 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50561 |  | CD2 cells/100 cells in Body fluid | CD2 | 17827-7 | 
51430 | CD20 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50562 |  | CD20 cells/100 cells in Body fluid | CD20 | 57418-6 | 
51431 | CD22 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50563 |  | CD22 cells/100 cells in Body fluid | CD22 | 42875-5 | 
51432 | CD23 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50564 |  | CD23 cells/100 cells in Body fluid | CD23 | 51269-9 | 
51434 | CD3 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50565 |  | CD3 cells/100 cells in Body fluid | CD3 | 17826-9 | 
51435 | CD33 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50566 |  | CD33 cells/100 cells in Body fluid | CD33 | 51294-7 | 
51436 | CD34 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50567 |  |  | CD34 |  | 
51437 | CD38 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50568 |  | CD38 cells/100 cells in Body fluid | CD38 | 51299-6 | 
51438 | CD4 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50569 |  | CD4 cells/100 cells in Body fluid | CD4 | 17822-8 | 
51439 | CD4/CD8 RATIO | HEMATOLOGY | OTHER BODY FLUID |  |  | 50570 |  | CD4 cells/CD8 Cells [# Ratio] in Body fluid | CD4/CD8 | 18266-7 | 
51440 | CD41 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50571 |  | CD41 cells/100 cells in Body fluid | CD41 | 51320-0 | 
51441 | CD45 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50572 |  | CD45 cells/100 cells in Body fluid | CD45 | 17823-6 | 
51442 | CD5 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50573 |  | CD5 cells/100 cells in Body fluid | CD5 | 57423-6 | 
51443 | CD56 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50574 |  | CD56 cells/100 cells in Body fluid | CD56 | 57424-4 | 
51445 | CD64 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50575 |  | CD64 cells/100 cells in Body fluid | CD64 | 51366-3 | 
51446 | CD7 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50576 |  | CD7 cells/100 cells in Body fluid | CD7 | 57425-1 | 
51447 | CD71 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50577 |  | CD71 cells/100 cells in Body fluid | CD71 | 57426-9 | 
51448 | CD8 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50578 |  | CD8 cells/100 cells in Body fluid | CD8 | 17824-4 | 
51450 | FMC-7 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50580 |  | FMC7 cells/100 cells in Body fluid | FMC-7 | 57428-5 | 
51451 | GLYCO A | HEMATOLOGY | OTHER BODY FLUID |  |  | 50581 |  | CD235a cells/100 cells in Body fluid | GLYCO A  | 57430-1 | 
51453 | HLA-DR | HEMATOLOGY | OTHER BODY FLUID |  |  | 50583 |  | HLA-DR+ cells/100 cells in Body fluid | HLA-DR | 51381-2 | 
51455 | KAPPA | HEMATOLOGY | OTHER BODY FLUID |  |  | 50585 |  |  | KAPPA |  | 
51456 | LAMBDA | HEMATOLOGY | OTHER BODY FLUID |  |  | 50586 |  |  | LAMBDA |  | 
51458 | MACROPHAGE | HEMATOLOGY | OTHER BODY FLUID |  |  | 50588 |  | Macrophages/100 leukocytes in Body fluid by Manual count | MACROPHAG | 12230-9 | 
51459 | MESOTHELIAL CELLS | HEMATOLOGY | OTHER BODY FLUID |  |  | 50589 |  | Mesothelial cells/100 leukocytes in Body fluid | MESOTHELI | 28544-5 | 
51461 | MONOS | HEMATOLOGY | OTHER BODY FLUID |  |  | 50591 |  | Monocytes/100 leukocytes in Body fluid by Manual count | MONOS | 10330-9 | 
51465 | PLASMA | HEMATOLOGY | OTHER BODY FLUID |  |  | 50595 |  | Plasma cells/100 leukocytes in Body fluid | PLASMA | 17803-8 | 
51466 | POLYS | HEMATOLOGY | OTHER BODY FLUID |  |  | 50596 |  | Polymorphonuclear cells/100 leukocytes in Body fluid | POLYS | 26518-1 | 
51467 | PROMYELOCYTES | HEMATOLOGY | OTHER BODY FLUID |  |  | 50597 |  | Promyelocytes/100 leukocytes in Body fluid | PROMYELO | 17799-8 | 
51473 | BANDS | HEMATOLOGY | PLEURAL |  |  | 50601 |  |  | BANDS |  | 
51479 | MACROPHAGES | HEMATOLOGY | PLEURAL |  |  | 50606 |  | Macrophages/100 leukocytes in Pleural fluid by Manual count | MACROPHAG | 40520-9 | 
51480 | MESOTHELIAL CELLS | HEMATOLOGY | PLEURAL |  |  | 50607 |  | Mesothelial cells/100 leukocytes in Pleural fluid | MESOTHELI | 30431-1 | 
51482 | MONOS | HEMATOLOGY | PLEURAL |  |  | 50609 |  | Monocytes/100 leukocytes in Pleural fluid | MONOS | 33362-5 | 
51485 | OTHER | HEMATOLOGY | PLEURAL |  |  | 50612 |  |  | OTHER |  | 
51486 | PLASMA CELLS | HEMATOLOGY | PLEURAL |  |  | 50613 |  | Plasma cells/100 leukocytes in Pleural fluid by Manual count | PLASMA | 40522-5 | 
51487 | POLYS | HEMATOLOGY | PLEURAL |  |  | 50614 |  | Polymorphonuclear cells/100 leukocytes in Pleural fluid | POLYS | 26519-9 | 
51488 | PROMYELOCYTES | HEMATOLOGY | PLEURAL |  |  | 50615 |  |  | PROMYELO |  | 
51536 | TRIPLE PHOSPHATE CRYSTALS | HEMATOLOGY | URINE |  |  | 50620 | 5814-9 | Triple phosphate crystals [Presence] in Urine sediment by Light microscopy | 3PHOSPHAT | 5814-9 | 
51494 | AMORPHOUS CRYSTALS | HEMATOLOGY | URINE |  |  | 50622 | 8246-1 | Amorphous sediment [Presence] in Urine sediment by Light microscopy | AMORPH | 8246-1 | 
51539 | URINE APPEARANCE | HEMATOLOGY | URINE |  |  | 50623 | 5767-9 | Appearance of Urine | APPEAR | 5767-9 | 
51497 | BILIRUBIN CRYSTALS | HEMATOLOGY | URINE |  |  | 50625 | 5771-1 | Bilirubin crystals [Presence] in Urine sediment by Light microscopy | BILICRYST | 5771-1 | 
51498 | BLOOD | HEMATOLOGY | URINE |  |  | 50627 |  | Hemoglobin [Presence] in Urine by Test strip | BLOOD | 5794-3 | 
51500 | CALCIUM CARBONATE CRYSTALS | HEMATOLOGY | URINE |  |  | 50629 | 5773-7 | Calcium carbonate crystals [Presence] in Urine sediment by Light microscopy | CA CARB | 5773-7 | 
51501 | CALCIUM OXALATE CRYSTALS | HEMATOLOGY | URINE |  |  | 50630 | 5774-5 | Calcium oxalate crystals [Presence] in Urine sediment by Light microscopy | CA OXAL | 5774-5 | 
51502 | CALCIUM PHOSPHATE CRYSTALS | HEMATOLOGY | URINE |  |  | 50631 | 5775-2 | Calcium phosphate crystals [Presence] in Urine sediment by Light microscopy | CA PHOS | 5775-2 | 
51541 | URINE COLOR | HEMATOLOGY | URINE |  |  | 50633 | 5778-6 | Color of Urine | COLOR | 5778-6 | 
51508 | EPITHELIAL CELLS | HEMATOLOGY | URINE |  |  | 50637 | 5787-7 | Epithelial cells [#/area] in Urine sediment by Microscopy high power field | EPI | 5787-7 | 
51511 | GRANULAR CASTS | HEMATOLOGY | URINE |  |  | 50642 | 5793-5 | Granular casts [#/area] in Urine sediment by Microscopy low power field | GRANULAR | 5793-5 | 
51513 | HEMOSIDERIN | HEMATOLOGY | URINE |  |  | 50644 |  | Hemosiderin [Presence] in Urine | HEMOSID | 4644-1 | 
51514 | HYALINE CASTS | HEMATOLOGY | URINE |  |  | 50645 | 5796-8 | Hyaline casts [#/area] in Urine sediment by Microscopy low power field | HYALINE | 5796-8 | 
51545 | URINE MUCOUS | HEMATOLOGY | URINE |  |  | 50649 | 8247-9 | Mucus [Presence] in Urine sediment by Light microscopy | MUCOUS | 8247-9 | 
51519 | NITRITE | HEMATOLOGY | URINE |  |  | 50650 | 5802-4 | Nitrite [Presence] in Urine by Test strip | NITRITE | 5802-4 | 
51525 | PROTEIN | HEMATOLOGY | URINE |  |  | 50655 | 5804-0 | Protein [Mass/volume] in Urine by Test strip | PROTEIN | 5804-0 | 
51527 | RBC CASTS | HEMATOLOGY | URINE |  |  | 50657 | 5807-3 | RBC casts [#/area] in Urine sediment by Microscopy low power field | RBCCAST | 5807-3 | 
51530 | RENAL EPITHELIAL CELLS | HEMATOLOGY | URINE |  |  | 50659 |  | Epithelial cells.renal [#/area] in Urine sediment by Microscopy high power field | RENAL EPI | 26052-1 | 
51531 | SPECIFIC GRAVITY | HEMATOLOGY | URINE |  |  | 50661 | 5811-5 | Specific gravity of Urine by Test strip | SP GRAV | 5811-5 | 
51532 | SPERM | HEMATOLOGY | URINE |  |  | 50662 |  | Spermatozoa [Presence] in Urine sediment by Light microscopy | SPERM | 8248-7 | 
51537 | TYROSINE CRYSTALS | HEMATOLOGY | URINE |  |  | 50667 | 5815-6 | Tyrosine crystals [Presence] in Urine sediment by Light microscopy | TYROSINE | 5815-6 | 
51538 | URIC ACID CRYSTALS | HEMATOLOGY | URINE |  |  | 50670 | 5817-2 | Urate crystals [Presence] in Urine sediment by Light microscopy | URIC ACID | 5817-2 | 
51549 | WAXY CASTS | HEMATOLOGY | URINE |  |  | 50673 | 5819-8 | Waxy casts [#/area] in Urine sediment by Microscopy low power field | WAXY | 5819-8 | 
51550 | WBC | HEMATOLOGY | URINE |  |  | 50674 | 5821-4 | Leukocytes [#/area] in Urine sediment by Microscopy high power field | WBC | 5821-4 | 
51551 | WBC CASTS | HEMATOLOGY | URINE |  |  | 50675 | 5820-6 | WBC casts [#/area] in Urine sediment by Microscopy low power field | WBCCAST | 5820-6 | 
50939 | H | CHEMISTRY | BLOOD |  |  | 50684 |  |  | H |  | 
50952 | I | CHEMISTRY | BLOOD |  |  | 50685 |  |  | I |  | 
51042 | FETALFN | CHEMISTRY | OTHER BODY FLUID |  |  | 50701 |  |  | FETALFN |  | 
51065 | LIPASE, PLEURAL | CHEMISTRY | PLEURAL |  |  | 50702 |  |  | LIPASE |  | 
51139 | PROMYELOCYTES | HEMATOLOGY | ASCITES |  |  | 50704 |  |  | PROMYELO |  | 
51142 | YOUNG | HEMATOLOGY | ASCITES |  |  | 50705 |  |  | YOUNG |  | 
51166 | CD103 | HEMATOLOGY | BLOOD |  |  | 50706 |  |  | CD103 |  | 
51186 | CD25 | HEMATOLOGY | BLOOD |  |  | 50707 |  |  | CD25 |  | 
51202 | CD57 | HEMATOLOGY | BLOOD |  |  | 50708 |  |  | CD57 |  | 
51264 | LUC | HEMATOLOGY | BLOOD |  |  | 50710 |  |  | LUC |  | 
51320 | TDT | HEMATOLOGY | BLOOD |  |  | 50714 |  |  | TDT |  | 
51335 | CD138 | HEMATOLOGY | BONE MARROW |  |  | 50716 |  |  | CD138 |  | 
51343 | CD22 | HEMATOLOGY | BONE MARROW |  |  | 50717 |  |  | CD22 |  | 
51345 | CD25 | HEMATOLOGY | BONE MARROW |  |  | 50718 |  |  | CD25 |  | 
51356 | CD57 | HEMATOLOGY | BONE MARROW |  |  | 50720 |  |  | CD57 |  | 
51419 | CD103 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50724 |  |  | CD103 |  | 
51426 | CD16 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50725 |  |  | CD16 |  | 
51433 | CD25 | HEMATOLOGY | OTHER BODY FLUID |  |  | 50726 |  |  | CD25 |  | 
51475 | BLASTS | HEMATOLOGY | PLEURAL |  |  | 50731 |  |  | BLASTS |  | 
50806 | COMMENTS | BLOOD GAS | BLOOD |  |  |  |  |  |  |  | New in v30
50857 | 25-OH VITAMIN D | CHEMISTRY | BLOOD |  |  |  |  |  |  |  | New in v30
50869 | AMIKACIN | CHEMISTRY | BLOOD |  |  |  |  |  |  |  | New in v30
50901 | CALL | CHEMISTRY | BLOOD |  |  |  |  |  |  |  | New in v30
50927 | FAX | CHEMISTRY | BLOOD |  |  |  |  |  |  |  | 
50988 | SEX HORMONE BINDING GLOBULIN | CHEMISTRY | BLOOD | 2942-1 |  |  |  |  |  |  | New in v30
50990 | STAT | CHEMISTRY | BLOOD |  |  |  |  |  |  |  | 
50991 | STUDY TUBES | CHEMISTRY | BLOOD |  |  |  |  |  |  |  | 
51175 | CD16/56 ABSOLUTE COUNT | HEMATOLOGY | BLOOD |  |  |  |  |  |  |  | look for CD16+CD56 [#/volume] LOINC
51199 | CD5 ABSOLUTE COUNT | HEMATOLOGY | BLOOD |  |  |  |  |  |  |  | look for CD5 [#/volume] LOINC
51400 | JOINT CRYSTALS, COMMENT | HEMATOLOGY | JOINT FLUID |  |  |  |  |  |  |  | New in v30
51542 | URINE COMMENTS | HEMATOLOGY | URINE |  |  |  |  |  |  |  | New in v30
50800 | ALVEOLAR-ARTERIAL GRADIENT | BLOOD GAS | BLOOD |  |  | *50001* | *19991-9* | *Oxygen.alveolar - arterial [Partial pressure] Respiratory system* |  |  | 
50801 | BASE EXCESS | BLOOD GAS | BLOOD |  |  | *50002* | *11555-0* | *Base excess in Blood* |  |  | 
50805 | CHLORIDE, WHOLE BLOOD | BLOOD GAS | BLOOD |  |  | *50004* | *2069-3* | *Chloride [Moles/volume] in Blood* |  |  | 
50821 | POTASSIUM, WHOLE BLOOD | BLOOD GAS | BLOOD |  |  | *50009* | *6298-4* | *Potassium [Moles/volume] in Blood* |  |  | 
50813 | METHEMOGLOBIN | BLOOD GAS | BLOOD |  |  | *50011* | *2614-6* | *Methemoglobin/Hemoglobin.total in Blood* |  |  | 
50823 | SODIUM, WHOLE BLOOD | BLOOD GAS | BLOOD |  |  | *50012* | *2947-0* | *Sodium [Moles/volume] in Blood* |  |  | 
50815 | OXYGEN | BLOOD GAS | BLOOD |  |  | *50013* | *19994-3* | *Oxygen/Inspired gas setting [Volume Fraction] Ventilator* |  |  | 
50816 | OXYGEN SATURATION | BLOOD GAS | BLOOD |  |  | *50015* | *20564-1* | *Oxygen saturation in Blood* |  |  | 
50827 | VENTILATION RATE | BLOOD GAS | BLOOD |  |  | *50020* | ** | ** |  |  | 
50822 | REQUIRED O2 | BLOOD GAS | BLOOD |  |  | *50021* | ** | ** |  |  | 
50802 | CALCULATED BICARBONATE, WHOLE BLOOD | BLOOD GAS | BLOOD |  |  | *50022* | *1959-6* | *Bicarbonate [Moles/volume] in Blood* |  |  | 
50803 | CALCULATED TOTAL CO2 | BLOOD GAS | BLOOD |  |  | *50022* | *1959-6* | *Bicarbonate [Moles/volume] in Blood* |  |  | 
50825 | TEMPERATURE | BLOOD GAS | BLOOD |  |  | *50023* | ** | ** |  |  | 
50803 | CALCULATED TOTAL CO2 | BLOOD GAS | BLOOD |  |  | *50025* | *1959-6* | *Bicarbonate [Moles/volume] in Blood* |  |  | 
50828 | VENTILATOR | BLOOD GAS | BLOOD |  |  | *50027* | ** | ** |  |  | 
50809 | HEMATOCRIT, CALCULATED | BLOOD GAS | BLOOD |  |  | *50029* | *20570-8* | *Hematocrit [Volume Fraction] of Blood* |  |  | 
50807 | FREE CALCIUM | BLOOD GAS | BLOOD |  |  | *50030* | *1994-3* | *Calcium.ionized [Moles/volume] in Blood* |  |  | 
50831 | FLUID TYPE | BLOOD GAS | OTHER BODY FLUID |  |  | *50031* | *14725-6* | *[Type] of Body fluid* |  |  | 
50835 | POTASSIUM | BLOOD GAS | OTHER BODY FLUID |  |  | *50032* | *2821-7* | *Potassium [Moles/volume] in Body fluid* |  |  | 
50832 | PCO2, BODY FLUID | BLOOD GAS | OTHER BODY FLUID |  |  | *50034* | *2023-0* | *Carbon dioxide [Partial pressure] in Body fluid* |  |  | 
50834 | PO2, BODY FLUID | BLOOD GAS | OTHER BODY FLUID |  |  | *50036* | *2706-0* | *Oxygen [Partial pressure] in Body fluid* |  |  | 
50840 | BICARBONATE, ASCITES | CHEMISTRY | ASCITES |  |  | *50041* | *54360-3* | *Bicarbonate [Moles/volume] in Peritoneal fluid* |  |  | 
50844 | CREATININE, ASCITES | CHEMISTRY | ASCITES |  |  | *50042* | *12191-3* | *Creatinine [Mass/volume] in Peritoneal fluid* |  |  | 
50846 | LACTATE DEHYDROGENASE, ASCITES | CHEMISTRY | ASCITES |  |  | *50044* | *2531-2* | *Lactate dehydrogenase [Enzymatic activity/volume] in Peritoneal fluid* |  |  | 
50848 | MISCELLANEOUS, ASCITES | CHEMISTRY | ASCITES |  |  | *50046* | ** | ** |  |  | 
50841 | BILIRUBIN, TOTAL, ASCITES | CHEMISTRY | ASCITES |  |  | *50050* | *14422-0* | *Bilirubin [Mass/volume] in Peritoneal fluid* |  |  | 
50852 | TOTAL PROTEIN, ASCITES | CHEMISTRY | ASCITES |  |  | *50051* | *2883-7* | *Protein [Mass/volume] in Peritoneal fluid* |  |  | 
50997 | THYROID PEROXIDASE ANTIBODIES | CHEMISTRY | BLOOD |  |  | *50071* | *8099-4* | *Thyroperoxidase Ab [Units/volume] in Serum* |  |  | 
50896 | CA-125 | CHEMISTRY | BLOOD |  |  | *50077* | *10334-1* | *Cancer Ag 125 [Units/volume] in Serum or Plasma* |  |  | 
50902 | CANCER ANTIGEN 27.29 | CHEMISTRY | BLOOD |  |  | *50078* | *17842-6* | *Cancer Ag 27-29 [Units/volume] in Serum or Plasma* |  |  | 
50905 | CENTROMERE | CHEMISTRY | BLOOD |  |  | *50088* | *16570-4* | *Centromere Ab [Presence] in Serum by Immunofluorescence* |  |  | 
51093 | CREATININE, SERUM | CHEMISTRY | URINE |  |  | *50090* | *2160-0* | *Creatinine [Mass/volume] in Serum or Plasma* |  |  | 
50917 | CRYOGLOBULIN | CHEMISTRY | BLOOD |  |  | *50092* | *5117-7* | *Cryoglobulin [Presence] in Serum* |  |  | 
50992 | TACROFK | CHEMISTRY | BLOOD |  |  | *50102* | *11253-2* | *Tacrolimus [Mass/volume] in Blood* |  |  | 
50874 | ANTI-GLIADIN ANTIBODY, IGA | CHEMISTRY | BLOOD |  |  | *50110* | *7893-1* | *Gliadin Ab [Units/volume] in Serum* |  |  | 
50937 | GRAY TOP HOLD (PLASMA) | CHEMISTRY | BLOOD |  |  | *50114* | ** | ** |  |  | 
50944 | HEPATITIS B CORE ANTIBODY, IGM | CHEMISTRY | BLOOD |  |  | *50117* | *16933-4* | *Hepatitis B virus core Ab [Presence] in Serum* |  |  | 
50891 | BLUE TOP HOLD | CHEMISTRY | BLOOD |  |  | *50124* | ** | ** |  |  | 
50953 | IMMUNOFIXATION | CHEMISTRY | BLOOD |  |  | *50126* | *49275-1* | *Immunofixation [interpretation] for Serum or Plasma Narrative* |  |  | 
50943 | HEPATITIS A VIRUS IGM ANTIBODY | CHEMISTRY | BLOOD |  |  | *50132* | *22314-9* | *Hepatitis A virus IgM Ab [Presence] in Serum* |  |  | 
50912 | CK-MB INDEX | CHEMISTRY | BLOOD |  |  | *50141* | *20569-0* | *Creatine kinase.MB/Creatine kinase.total in Serum or Plasma* |  |  | 
50981 | PROTEIN ELECTROPHORESIS | CHEMISTRY | BLOOD |  |  | *50145* | *24351-9* | *Protein electrophoresis panel in Serum or Plasma* |  |  | 
50985 | RED TOP HOLD | CHEMISTRY | BLOOD |  |  | *50157* | ** | ** |  |  | 
50900 | CALCULATED THYROXINE (T4) INDEX | CHEMISTRY | BLOOD |  |  | *50164* | *32215-6* | *Thyroxine free index in Serum or Plasma* |  |  | 
50858 | ABSOLUTE A1C | CHEMISTRY | BLOOD |  |  | *50183* | *4548-4* | *Hemoglobin A1c (glycated HgB)/Hemoglobin.total [Moles] in Blood* |  |  | 
50859 | ABSOLUTE HEMOGLOBIN | CHEMISTRY | BLOOD |  |  | *50184* | *718-7* | *Hemoglobin [Mass/volume] in Blood* |  |  | 
50885 | BETA-2 MICROGLOBULIN | CHEMISTRY | BLOOD |  |  | *50185* | *32731-2* | *Beta 2 globulin [Mass/volume] in Serum or Plasma by Electrophoresis* |  |  | 
50883 | BARBITURATE SCREEN | CHEMISTRY | BLOOD |  |  | *50186* | *3376-1* | *Barbiturates [Presence] in Serum, Plasma or Blood* |  |  | 
50884 | BENZODIAZEPINE SCREEN | CHEMISTRY | BLOOD |  |  | *50187* | *42662-7* | *Benzodiazepines [Presence] in Blood* |  |  | 
50958 | IRON BINDING CAPACITY, TOTAL | CHEMISTRY | BLOOD |  |  | *50190* | *2500-7* | *Iron binding capacity [Mass/volume] in Serum or Plasma* |  |  | 
50922 | DOUBLE STRANDED DNA | CHEMISTRY | BLOOD |  |  | *50192* | *5130-0* | *DNA double strand Ab [Units/volume] in Serum* |  |  | 
50924 | ESTIMATED GFR (MDRD EQUATION) | CHEMISTRY | BLOOD |  |  | *50193* | *33914-3* | *Glomerular filtration rate/1.73 sq M.predicted by Creatinine-based formula (MDRD)* |  |  | 
50968 | NTPROBNP | CHEMISTRY | BLOOD |  |  | *50195* | *33762-6* | *Natriuretic peptide.B prohormone [Mass/volume] in Serum or Plasma* |  |  | 
50984 | RAPAMYCIN | CHEMISTRY | BLOOD |  |  | *50196* | *29247-4* | *Sirolimus [Mass/volume] in Blood* |  |  | 
51001 | TISSUE TRANSGLUTAMINASE AB, IGA | CHEMISTRY | BLOOD |  |  | *50197* | *31017-7* | *Tissue transglutaminase IgA Ab [Units/volume] in Serum* |  |  | 
51004 | TRICYCLIC ANTIDEPRESSANT SCREEN | CHEMISTRY | BLOOD |  |  | *50198* | *4073-3* | *Tricyclic antidepressants [Presence] in Serum or Plasma* |  |  | 
51018 | <ALBUMIN> | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50199* | *1746-7* | *Albumin [Mass/volume] in Cerebral spinal fluid* |  |  | 
51024 | PEP, CSF | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50200* | *24352-7* | *Protein electrophoresis panel in Cerebral spinal fluid* |  |  | 
51021 | GLUCOSE, CSF | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50201* | *2342-4* | *Glucose [Mass/volume] in Cerebral spinal fluid* |  |  | 
51022 | LACTATE DEHYDROGENASE, CSF | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50202* | *2528-8* | *Lactate dehydrogenase [Enzymatic activity/volume] in Cerebral spinal fluid* |  |  | 
51023 | MISCELLANEOUS, CSF | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50203* | ** | ** |  |  | 
51025 | TOTAL PROTEIN, CSF | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50204* | *2880-3* | *Protein [Mass/volume] in Cerebral spinal fluid* |  |  | 
51019 | BILIRUBIN, TOTAL, CSF | CHEMISTRY | CEREBROSPINAL FLUID (CSF) |  |  | *50205* | *1973-7* | *Bilirubin [Mass/volume] in Cerebral spinal fluid* |  |  | 
51030 | CREATININE, JOINT FLUID | CHEMISTRY | JOINT FLUID |  |  | *50207* | *14401-4* | *Creatinine [Mass/volume] in Synovial fluid* |  |  | 
51032 | LD, JOINT FLUID | CHEMISTRY | JOINT FLUID |  |  | *50209* | *2533-8* | *Lactate dehydrogenase [Enzymatic activity/volume] in Synovial fluid* |  |  | 
51033 | TOTAL PROTEIN, JOINT FLUID | CHEMISTRY | JOINT FLUID |  |  | *50210* | *2886-0* | *Protein [Mass/volume] in Synovial fluid* |  |  | 
51041 | CREATININE, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50216* | *12190-5* | *Creatinine [Mass/volume] in Body fluid* |  |  | 
51044 | LD, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50218* | *2529-6* | *Lactate dehydrogenase [Enzymatic activity/volume] in Body fluid* |  |  | 
51046 | MAGNESIUM, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50220* | *29365-4* | *Magnesium [Mass/volume] in Body fluid* |  |  | 
51047 | MISCELLANEOUS, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50221* | ** | ** |  |  | 
51037 | BILIRUBIN, TOTAL, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50228* | *1974-5* | *Bilirubin [Mass/volume] in Body fluid* |  |  | 
51052 | TOTAL PROTEIN, BODY FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50229* | *2881-1* | *Protein [Mass/volume] in Body fluid* |  |  | 
51058 | BICARBONATE, PLEURAL | CHEMISTRY | PLEURAL |  |  | *50238* | *54361-1* | *Bicarbonate [Moles/volume] in Pleural fluid* |  |  | 
51062 | CREATININE, PLEURAL | CHEMISTRY | PLEURAL |  |  | *50239* | *14399-0* | *Creatinine [Mass/volume] in Pleural fluid* |  |  | 
51064 | LACTATE DEHYDROGENASE, PLEURAL | CHEMISTRY | PLEURAL |  |  | *50241* | *2530-4* | *Lactate dehydrogenase [Enzymatic activity/volume] in Pleural fluid* |  |  | 
51066 | MISCELLANEOUS, PLEURAL | CHEMISTRY | PLEURAL |  |  | *50242* | ** | ** |  |  | 
51059 | BILIRUBIN, TOTAL, PLEURAL | CHEMISTRY | PLEURAL |  |  | *50245* | *14421-2* | *Bilirubin [Mass/volume] in Pleural fluid* |  |  | 
51069 | TOTAL PROTEIN, PLEURAL | CHEMISTRY | PLEURAL |  |  | *50246* | *2882-9* | *Protein [Mass/volume] in Pleural fluid* |  |  | 
51078 | 24 HR CALCIUM | CHEMISTRY | URINE |  |  | *50253* | *6874-2* | *Calcium [Mass/time] in 24 hour Urine* |  |  | 
51079 | 24 HR CREATININE | CHEMISTRY | URINE |  |  | *50254* | *2162-6* | *Creatinine [Mass/time] in 24 hour Urine* |  |  | 
51080 | 24 HR PROTEIN | CHEMISTRY | URINE |  |  | *50255* | *2889-4* | *Protein [Mass/time] in 24 hour Urine* |  |  | 
51113 | TOTAL COLLECTION TIME | CHEMISTRY | URINE |  |  | *50256* | *13362-9* | *Collection duration of Urine* |  |  | 
51118 | URINE CREATININE | CHEMISTRY | URINE |  |  | *50258* | ** | ** |  |  | 
51121 | URINE VOLUME, TOTAL | CHEMISTRY | URINE |  |  | *50259* | *28009-9* | *Volume of Urine* |  |  | 
51085 | AMYLASE/CREATININE RATIO, URINE | CHEMISTRY | URINE |  |  | *50260* | *34235-2* | *Amylase/Creatinine [Ratio] in Urine* |  |  | 
51092 | CREATININE CLEARANCE | CHEMISTRY | URINE |  |  | *50265* | *33558-8* | *Creatinine renal clearance in unspecified time* |  |  | 
51098 | IMMUNOFIXATION, URINE | CHEMISTRY | URINE |  |  | *50269* | *49276-9* | *Immunofixation [interpretation] for Urine Narrative* |  |  | 
51110 | PROT. ELECTROPHORESIS, URINE | CHEMISTRY | URINE |  |  | *50280* | *13438-7* | *Protein Fractions [interpretation] in Urine by Electrophoresis* |  |  | 
51119 | URINE TUBE, HELD | CHEMISTRY | URINE |  |  | *50282* | ** | ** |  |  | 
51120 | URINE VOLUME | CHEMISTRY | URINE |  |  | *50285* | *28009-9* | *Volume of Urine* |  |  | 
51081 | ALBUMIN, URINE | CHEMISTRY | URINE |  |  | *50288* | *1754-1* | *Albumin [Mass/volume] in Urine* |  |  | 
51083 | AMPHETAMINE SCREEN, URINE | CHEMISTRY | URINE |  |  | *50289* | *3349-8* | *Amphetamines [Presence] in Urine* |  |  | 
51087 | BENZODIAZEPINE SCREEN, URINE | CHEMISTRY | URINE |  |  | *50291* | *3390-2* | *Benzodiazepines [Presence] in Urine* |  |  | 
51091 | COCAINE, URINE | CHEMISTRY | URINE |  |  | *50292* | *3397-7* | *Cocaine [Presence] in Urine* |  |  | 
51095 | ETHANOL, URINE | CHEMISTRY | URINE |  |  | *50293* | *5644-0* | *Ethanol [Presence] in Urine* |  |  | 
51101 | MARIJUANA | CHEMISTRY | URINE |  |  | *50294* | *3427-2* | *Cannabinoids [Presence] in Urine* |  |  | 
51102 | METHADONE, URINE | CHEMISTRY | URINE |  |  | *50295* | *3773-9* | *Methadone [Presence] in Urine* |  |  | 
51104 | OPIATE SCREEN, URINE | CHEMISTRY | URINE |  |  | *50296* | *3879-4* | *Opiates [Presence] in Urine* |  |  | 
51123 | ATYPICAL LYMPHOCYTES | HEMATOLOGY | ASCITES |  |  | *50298* | *33369-0* | *Lymphocytes Variant/100 leukocytes in Peritoneal fluid* |  |  | 
51125 | BASOPHILS | HEMATOLOGY | ASCITES |  |  | *50300* | *35069-4* | *Basophils/100 leukocytes in Peritoneal fluid* |  |  | 
51127 | EOSINOPHILS | HEMATOLOGY | ASCITES |  |  | *50301* | *30380-0* | *Eosinophils/100 leukocytes in Peritoneal fluid* |  |  | 
51128 | HEMATOCRIT, ASCITES | HEMATOLOGY | ASCITES |  |  | *50302* | ** | ** |  |  | 
51129 | LYMPHOCYTES | HEMATOLOGY | ASCITES |  |  | *50303* | *26482-0* | *Lymphocytes/100 leukocytes in Peritoneal fluid* |  |  | 
51132 | METAMYELOCYTES | HEMATOLOGY | ASCITES |  |  | *50306* | ** | ** |  |  | 
51133 | MONOCYTES | HEMATOLOGY | ASCITES |  |  | *50307* | *26488-7* | *Monocytes/100 leukocytes in Peritoneal fluid* |  |  | 
51134 | MYELOCYTES | HEMATOLOGY | ASCITES |  |  | *50308* | ** | ** |  |  | 
51135 | NUCLEATED RBC | HEMATOLOGY | ASCITES |  |  | *50309* | ** | ** |  |  | 
51140 | RBC, ASCITES | HEMATOLOGY | ASCITES |  |  | *50313* | *26457-2* | *Erythrocytes [#/volume] in Peritoneal fluid* |  |  | 
51141 | WBC, ASCITES | HEMATOLOGY | ASCITES |  |  | *50314* | *26468-9* | *Leukocytes [#/volume] in Peritoneal fluid* |  |  | 
51326 | WBC COUNT | HEMATOLOGY | BLOOD |  |  | *50314* | *26468-9* | *Leukocytes [#/volume] in Peritoneal fluid* |  |  | 
51267 | LYMPHOCYTES, PERCENT | HEMATOLOGY | BLOOD |  |  | *50315* | *26478-8* | *Lymphocytes/100 leukocytes in Blood* |  |  | 
51188 | CD3 ABSOLUTE COUNT | HEMATOLOGY | BLOOD |  |  | *50317* | *8122-4* | *CD3 cells [#/volume] in Blood* |  |  | 
51146 | ABSOLUTE LYMPHOCYTE COUNT | HEMATOLOGY | BLOOD |  |  | *50320* | *26474-7* | *Lymphocytes [#/volume] in Blood* |  |  | 
51307 | RETICULOCYTE COUNT, ABSOLUTE | HEMATOLOGY | BLOOD |  |  | *50321* | *14196-0* | *Reticulocytes [#/volume] in Red Blood Cells* |  |  | 
51149 | ALPHA ANTIPLASMIN | HEMATOLOGY | BLOOD |  |  | *50327* | ** | ** |  |  | 
51155 | ARACHADONIC ACID | HEMATOLOGY | BLOOD |  |  | *50329* | ** | ** |  |  | 
51153 | ANTITHROMBIN | HEMATOLOGY | BLOOD |  |  | *50330* | *27811-9* | *Antithrombin actual/normal in Platelet poor plasma by Chromogenic method* |  |  | 
51162 | BLEEDING TIME | HEMATOLOGY | BLOOD |  |  | *50336* | *11067-6* | *Bleeding time* |  |  | 
51168 | CD11C | HEMATOLOGY | BLOOD |  |  | *50340* | *8109-1* | *CD11c cells/100 cells in Blood* |  |  | 
51173 | CD15/56 | HEMATOLOGY | BLOOD |  |  | *50346* | *18267-5* | *CD16+CD56+ cells/100 cells in Blood* |  |  | 
51187 | CD3 % | HEMATOLOGY | BLOOD |  |  | *50352* | *8124-0* | *CD3 cells/100 cells in Blood* |  |  | 
51198 | CD5 % | HEMATOLOGY | BLOOD |  |  | *50360* | *8132-3* | *CD5 cells/100 cells in Blood* |  |  | 
51212 | EOSINOPHIL COUNT | HEMATOLOGY | BLOOD |  |  | *50374* | *26449-9* | *Eosinophils [#/volume] in Blood* |  |  | 
51214 | EPINEPHERINE | HEMATOLOGY | BLOOD |  |  | *50375* | ** | ** |  |  | 
51235 | FIBRIN DEGRADATION PRODUCTS | HEMATOLOGY | BLOOD |  |  | *50376* | *30226-5* | *Fibrin+Fibrinogen fragments [Mass/volume] in Platelet poor plasma* |  |  | 
51240 | GRANULOCYTE COUNT | HEMATOLOGY | BLOOD |  |  | *50382* | *30394-1* | *Granulocytes [#/volume] in Blood* |  |  | 
51242 | HEINZ BODY PREP | HEMATOLOGY | BLOOD |  |  | *50384* | *48068-1* | *Heinz bodies [Presence] in Blood* |  |  | 
51251 | HEPARIN, LMW | HEMATOLOGY | BLOOD |  |  | *50385* | *13055-9* | *Heparin [Units/volume] in Platelet poor plasma* |  |  | 
51257 | INHIBITOR SCREEN | HEMATOLOGY | BLOOD |  |  | *50398* | ** | ** |  |  | 
51262 | LARGE PLATELETS | HEMATOLOGY | BLOOD |  |  | *50406* | *34167-7* | *Platelets Large [Presence] in Blood by Automated count* |  |  | 
51265 | LUPUS ANTICOAGULANT | HEMATOLOGY | BLOOD |  |  | *50407* | ** | ** |  |  | 
51273 | METAMYELOCYTES | HEMATOLOGY | BLOOD |  |  | *50414* | *28541-1* | *Metamyelocytes/100 leukocytes in Blood* |  |  | 
51275 | MONOCYTE COUNT | HEMATOLOGY | BLOOD |  |  | *50416* | *26484-6* | *Monocytes [#/volume] in Blood* |  |  | 
51277 | MYELOCYTES | HEMATOLOGY | BLOOD |  |  | *50418* | *26498-6* | *Myelocytes/100 leukocytes in Blood* |  |  | 
51280 | OSMOTIC FRAGILITY | HEMATOLOGY | BLOOD |  |  | *50421* | *34964-7* | *Osmotic fragility [interpretation] of Red Blood Cells* |  |  | 
51286 | PLATELET CLUMPS | HEMATOLOGY | BLOOD |  |  | *50430* | *40741-1* | *Platelet clump [Presence] in Blood by Automated count* |  |  | 
51293 | PROTEIN C, ANTIGEN | HEMATOLOGY | BLOOD |  |  | *50435* | *27820-0* | *Protein C Ag actual/normal in Platelet poor plasma by Immunologic method* |  |  | 
51294 | PROTEIN C, FUNCTIONAL | HEMATOLOGY | BLOOD |  |  | *50436* | *27818-4* | *Protein C actual/normal in Platelet poor plasma by Chromogenic method* |  |  | 
51295 | PROTEIN S, ANTIGEN | HEMATOLOGY | BLOOD |  |  | *50437* | *27823-4* | *Protein S Ag actual/normal in Platelet poor plasma by Immunologic method* |  |  | 
51296 | PROTEIN S, FUNCTIONAL | HEMATOLOGY | BLOOD |  |  | *50438* | *31102-7* | *Protein S actual/normal in Platelet poor plasma by Chromogenic method* |  |  | 
51301 | QUANTITATIVE G6PD | HEMATOLOGY | BLOOD |  |  | *50441* | *32546-4* | *Glucose-6-Phosphate dehydrogenase [Enzymatic activity/mass] in Red Blood Cells* |  |  | 
51303 | RED BLOOD CELL FRAGMENTS | HEMATOLOGY | BLOOD |  |  | *50443* | ** | ** |  |  | 
51305 | REPTILASE TIME | HEMATOLOGY | BLOOD |  |  | *50446* | *6683-7* | *Reptilase time in Platelet poor plasma by Coagulation assay* |  |  | 
51308 | RETICULOCYTE COUNT, AUTOMATED | HEMATOLOGY | BLOOD |  |  | *50447* | *17849-1* | *Reticulocytes/100 erythrocytes in Red Blood Cells by Automated count* |  |  | 
51309 | RETICULOCYTE COUNT, MANUAL | HEMATOLOGY | BLOOD |  |  | *50448* | *31112-6* | *Reticulocytes/100 erythrocytes in Red Blood Cells by Manual* |  |  | 
51315 | SICKLE CELL PREPARATION | HEMATOLOGY | BLOOD |  |  | *50454* | *6864-3* | *Hemoglobin S [Presence] in Blood by Solubility test* |  |  | old lab ITEMID is correct, but loinc seems wrong ??
51225 | FACTOR VIII INHIBITOR | HEMATOLOGY | BLOOD |  |  | *50464* | *3204-5* | *Coagulation factor VIII inhibitor [Units/volume] in Platelet poor plasma by Coagulation assay* |  |  | 
51328 | YOUNG CELLS | HEMATOLOGY | BLOOD |  |  | *50473* | *51633-6* | *Platelets reticulated/100 platelets in Blood* |  |  | 
51366 | IRON STAIN | HEMATOLOGY | BONE MARROW |  |  | *50505* | *13513-7* | *Iron.microscopic observation [Identifier] in Bone marrow by Potassium ferrocyanide stain* |  |  | 
51371 | ATYPICAL LYMPHOCYTES | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50509* | *30416-2* | *Lymphocytes Variant/100 leukocytes in Cerebral spinal fluid* |  |  | 
51372 | BANDS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50510* | *26509-0* | *Neutrophils.band form/100 leukocytes in Cerebral spinal fluid* |  |  | 
51373 | BASOPHILS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50511* | *30374-3* | *Basophils/100 leukocytes in Cerebral spinal fluid* |  |  | 
51374 | BLASTS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50512* | *26447-3* | *Blasts/100 leukocytes in Cerebral spinal fluid* |  |  | 
51375 | EOSINOPHILS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50513* | *26451-5* | *Eosinophils/100 leukocytes in Cerebral spinal fluid* |  |  | 
51376 | HEMATOCRIT, CSF | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50514* | *30398-2* | *Hematocrit [Volume Fraction] of Cerebral spinal fluid* |  |  | 
51377 | HYPERSEGMENTED NEUTROPHILS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50515* | *26506-6* | *Neutrophils.segmented/100 leukocytes in Cerebral spinal fluid* |  |  | 
51379 | LYMPHS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50516* | *26479-6* | *Lymphocytes/100 leukocytes in Cerebral spinal fluid* |  |  | 
51380 | MACROPHAGE | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50517* | *30426-1* | *Macrophages/100 leukocytes in Cerebral spinal fluid* |  |  | 
51381 | MESOTHELIAL CELLS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50518* | *30429-5* | *Mesothelial cells/100 leukocytes in Cerebral spinal fluid* |  |  | 
51382 | METAMYELOCYTES | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50519* | *30366-9* | *Metamyelocytes/100 leukocytes in Cerebral spinal fluid* |  |  | 
51383 | MONOCYTES | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50520* | *26486-1* | *Monocytes/100 leukocytes in Cerebral spinal fluid* |  |  | 
51384 | MYELOCYTES | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50521* | *30447-7* | *Myelocytes/100 leukocytes in Cerebral spinal fluid* |  |  | 
51385 | NRBC | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50522* | *48778-5* | *Nucleated Erythrocytes/100 cells in Cerebral spinal fluid* |  |  | 
51386 | OTHER | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50523* | ** | ** |  |  | 
51387 | PLASMA | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50524* | *47413-0* | *Plasma cells/100 leukocytes in Cerebral spinal fluid* |  |  | 
51388 | POLYS | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50525* | *26517-3* | *Polymorphonuclear cells/100 leukocytes in Cerebral spinal fluid* |  |  | 
51390 | RBC, CSF | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50526* | *26454-9* | *Erythrocytes [#/volume] in Cerebral spinal fluid* |  |  | 
51392 | WBC, CSF | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50527* | *26465-5* | *Leukocytes [#/volume] in Cerebral spinal fluid* |  |  | 
51393 | YOUNG | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50528* | ** | ** |  |  | 
51394 | ATYPICAL LYMPHOCYTES | HEMATOLOGY | JOINT FLUID |  |  | *50529* | *33371-6* | *Lymphocytes Variant/100 leukocytes in Synovial fluid* |  |  | 
51396 | BASOPHILS | HEMATOLOGY | JOINT FLUID |  |  | *50531* | *17833-5* | *Basophils/100 leukocytes in Synovial fluid* |  |  | 
51397 | EOSINOPHILS | HEMATOLOGY | JOINT FLUID |  |  | *50534* | *17834-3* | *Eosinophils/100 leukocytes in Synovial fluid* |  |  | 
51398 | HEMATOCRIT, JOINT FLUID | HEMATOLOGY | JOINT FLUID |  |  | *50535* | ** | ** |  |  | 
51404 | LYMPHOCYTES | HEMATOLOGY | JOINT FLUID |  |  | *50537* | *26483-8* | *Lymphocytes/100 leukocytes in Synovial fluid* |  |  | 
51407 | METAMYELOCYTES | HEMATOLOGY | JOINT FLUID |  |  | *50540* | ** | ** |  |  | 
51408 | MONOCYTES | HEMATOLOGY | JOINT FLUID |  |  | *50541* | *17835-0* | *Monocytes/100 leukocytes in Synovial fluid* |  |  | 
51409 | NRBC | HEMATOLOGY | JOINT FLUID |  |  | *50542* | *48040-0* | *Nucleated Erythrocytes/100 leukocytes [Ratio] in Synovial fluid by Manual count* |  |  | 
51412 | RBC, JOINT FLUID | HEMATOLOGY | JOINT FLUID |  |  | *50546* | *26458-0* | *Erythrocytes [#/volume] in Synovial fluid* |  |  | 
51414 | WBC, JOINT FLUID | HEMATOLOGY | JOINT FLUID |  |  | *50548* | *26469-7* | *Leukocytes [#/volume] in Synovial fluid* |  |  | 
51415 | ATYPICAL LYMPHOCYTES | HEMATOLOGY | OTHER BODY FLUID |  |  | *50549* | *30417-0* | *Lymphocytes Variant/100 leukocytes in Body fluid* |  |  | 
51417 | BASOPHILS | HEMATOLOGY | OTHER BODY FLUID |  |  | *50551* | *28543-7* | *Basophils/100 leukocytes in Body fluid* |  |  | 
51449 | EOSINOPHILS | HEMATOLOGY | OTHER BODY FLUID |  |  | *50579* | *26452-3* | *Eosinophils/100 leukocytes in Body fluid* |  |  | 
51452 | HEMATOCRIT, OTHER FLUID | HEMATOLOGY | OTHER BODY FLUID |  |  | *50582* | *11153-4* | *Hematocrit [Volume Fraction] of Body fluid* |  |  | 
51457 | LYMPHOCYTES | HEMATOLOGY | OTHER BODY FLUID |  |  | *50587* | *11031-2* | *Lymphocytes/100 leukocytes in Body fluid* |  |  | 
51460 | METAMYELOCYTES | HEMATOLOGY | OTHER BODY FLUID |  |  | *50590* | *17801-2* | *Metamyelocytes/100 leukocytes in Body fluid* |  |  | 
51462 | MYELOCYTES | HEMATOLOGY | OTHER BODY FLUID |  |  | *50592* | *17800-4* | *Myelocytes/100 leukocytes in Body fluid* |  |  | 
51463 | NRBC | HEMATOLOGY | OTHER BODY FLUID |  |  | *50593* | ** | ** |  |  | 
51464 | OTHER CELL | HEMATOLOGY | OTHER BODY FLUID |  |  | *50594* | ** | ** |  |  | 
51468 | RBC, OTHER FLUID | HEMATOLOGY | OTHER BODY FLUID |  |  | *50598* | *26455-6* | *Erythrocytes [#/volume] in Body fluid* |  |  | 
51470 | WBC, OTHER FLUID | HEMATOLOGY | OTHER BODY FLUID |  |  | *50599* | *26466-3* | *Leukocytes [#/volume] in Body fluid* |  |  | 
51472 | ATYPICAL LYMPHOCYTES | HEMATOLOGY | PLEURAL |  |  | *50600* | *33370-8* | *Lymphocytes Variant/100 leukocytes in Pleural fluid* |  |  | 
51474 | BASOPHILS | HEMATOLOGY | PLEURAL |  |  | *50602* | *35070-2* | *Basophils/100 leukocytes in Pleural fluid* |  |  | 
51476 | EOSINOPHILS | HEMATOLOGY | PLEURAL |  |  | *50603* | *30379-2* | *Eosinophils/100 leukocytes in Pleural fluid* |  |  | 
51477 | HEMATOCRIT, PLEURAL | HEMATOLOGY | PLEURAL |  |  | *50604* | ** | ** |  |  | 
51478 | LYMPHOCYTES | HEMATOLOGY | PLEURAL |  |  | *50605* | *26481-2* | *Lymphocytes/100 leukocytes in Pleural fluid* |  |  | 
51481 | METAMYELOCYTES | HEMATOLOGY | PLEURAL |  |  | *50608* | ** | ** |  |  | 
51483 | MYELOCYTES | HEMATOLOGY | PLEURAL |  |  | *50610* | ** | ** |  |  | 
51484 | NRBC | HEMATOLOGY | PLEURAL |  |  | *50611* | ** | ** |  |  | 
51489 | RBC, PLEURAL | HEMATOLOGY | PLEURAL |  |  | *50616* | *26456-4* | *Erythrocytes [#/volume] in Pleural fluid* |  |  | 
51490 | WBC, PLEURAL | HEMATOLOGY | PLEURAL |  |  | *50617* | *26467-1* | *Leukocytes [#/volume] in Pleural fluid* |  |  | 
51491 | YOUNG CELLS | HEMATOLOGY | PLEURAL |  |  | *50618* | ** | ** |  |  | 
51499 | BROAD CASTS | HEMATOLOGY | URINE |  |  | *50628* | *18487-9* | *Broad casts [#/area] in Urine sediment by Microscopy low power field* |  |  | 
51503 | CELLULAR CAST | HEMATOLOGY | URINE |  |  | *50632* | ** | ** |  |  | 
51506 | EOSINOPHILS | HEMATOLOGY | URINE |  |  | *50636* | *25156-1* | *Eosinophils [Presence] in Urine sediment by Light microscopy* |  |  | 
51544 | URINE FAT BODIES | HEMATOLOGY | URINE |  |  | *50638* | *2272-3* | *Fat [Presence] in Urine* |  |  | 
51509 | FREE FAT | HEMATOLOGY | URINE |  |  | *50640* | *53359-6* | *Fat [#/area] in Urine by Computer assisted method* |  |  | 
51512 | HEMATOCRIT | HEMATOLOGY | URINE |  |  | *50643* | *17809-5* | *Hematocrit [Volume Fraction] of Urine* |  |  | 
51515 | HYPHENATED YEAST | HEMATOLOGY | URINE |  |  | *50646* | *41865-7* | *Yeast.hyphae [Presence] in Urine sediment by Light microscopy* |  |  | 
51520 | NON-SQUAMOUS EPITHELIAL CELLS | HEMATOLOGY | URINE |  |  | *50651* | *41284-1* | *Epithelial cells.non-squamous [#/area] in Urine sediment by Microscopy high power field* |  |  | 
51521 | NONSQUAMOUS EPITHELIAL CELL | HEMATOLOGY | URINE |  |  | *50652* | *41284-1* | *Epithelial cells.non-squamous [#/area] in Urine sediment by Microscopy high power field* |  |  | 
51528 | RBC CLUMPS | HEMATOLOGY | URINE |  |  | *50658* | ** | ** |  |  | 
51529 | REDUCING SUBSTANCES, URINE | HEMATOLOGY | URINE |  |  | *50660* | ** | ** |  |  | 
51533 | SULFONAMIDES | HEMATOLOGY | URINE |  |  | *50663* | *5812-3* | *Sulfonamide crystals [Presence] in Urine sediment by Light microscopy* |  |  | 
51534 | TRANSITIONAL EPITHELIAL CELLS | HEMATOLOGY | URINE |  |  | *50664* | *30089-7* | *Transitional cells [#/area] in Urine sediment by Microscopy high power field* |  |  | 
51535 | TRICHOMONAS | HEMATOLOGY | URINE |  |  | *50665* | *32724-7* | *Trichomonas sp [Presence] in Urine by Light microscopy* |  |  | 
51546 | URINE SPECIMEN TYPE | HEMATOLOGY | URINE |  |  | *50666* | *19159-3* | *Urinalysis specimen collection method* |  |  | 
51543 | URINE CRYSTALS, OTHER | HEMATOLOGY | URINE |  |  | *50669* | *5783-6* | *Unidentified crystals [Presence] in Urine sediment by Light microscopy* |  |  | 
51552 | WBC CLUMPS | HEMATOLOGY | URINE |  |  | *50676* | ** | ** |  |  | 
50960 | LIGHT GREEN TOP HOLD | CHEMISTRY | BLOOD |  |  | *50686* | ** | ** |  |  | 
50964 | MACRO PROLACTIN | CHEMISTRY | BLOOD |  |  | *50691* | ** | ** |  |  | 
50873 | ANTI-DGP (IGA/IGG) | CHEMISTRY | BLOOD |  |  | *50696* | ** | ** |  |  | 
50966 | METHOTREXATE | CHEMISTRY | BLOOD |  |  | *50698* | ** | ** |  |  | 
51306 | REPTILASE TIME CONTROL | HEMATOLOGY | BLOOD |  |  | *50713* | ** | ** |  |  | 
51389 | PROMYELOCYTES | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50722* | ** | *Promyelocytes/100 leukocytes in CSF* |  |  | 
51507 | EPITHELIAL CASTS | HEMATOLOGY | URINE |  |  | *50733* | ** | ** |  |  | 
51522 | OVAL FAT BODY | HEMATOLOGY | URINE |  |  | *50735* | ** | ** |  |  | 
50860 | ACETAMINOPHEN | CHEMISTRY | BLOOD | 3297-9 |  | *50056* | *3298-7* | *Acetaminophen [Mass/volume] in Serum or Plasma* |  |  | 
50862 | ACID PHOSPHATASE | CHEMISTRY | BLOOD | 1715-2 |  | *50058* | *1711-1* | *Acid phosphatase [Enzymatic activity/volume] in Blood* |  |  | 
50867 | ALKALINE PHOSPHATASE | CHEMISTRY | BLOOD | 6768-6 |  | *50061* | *1783-0* | *Alkaline phosphatase [Enzymatic activity/volume] in Blood* |  |  | 
50871 | AMYLASE | CHEMISTRY | BLOOD | 6697-7 |  | *50065* | *1798-8* | *Amylase [Enzymatic activity/volume] in Serum or Plasma* |  |  | 
50872 | ANION GAP | CHEMISTRY | BLOOD | 1863-0 |  | *50068* | *41276-7* | *Anion gap in Blood* |  |  | 
50876 | ANTI-NEUTROPHIL CYTOPLASMIC ANTIBODY | CHEMISTRY | BLOOD |  |  | *50067* | *35279-9* | *Neutrophil cytoplasmic Ab [Presence] in Serum by Immunofluorescence* |  |  | 
50877 | ANTI-NUCLEAR ANTIBODY | CHEMISTRY | BLOOD | 5047-6 |  | *50066* | *8061-4* | *Nuclear Ab [Presence] in Serum* |  |  | 
50879 | ANTI-PARIETAL CELL ANTIBODY | CHEMISTRY | BLOOD |  |  | *50155* | *26969-6* | *Parietal cell Ab [Presence] in Serum by Immunofluorescence* |  |  | 
50880 | ANTI-SMOOTH MUSCLE ANTIBODY | CHEMISTRY | BLOOD |  |  | *50161* | *14252-1* | *Smooth muscle Ab [Presence] in Serum* |  |  | 
50881 | ANTI-THYROGLOBULIN ANTIBODIES | CHEMISTRY | BLOOD | 5380-1 |  | *50070* | *8098-6* | *Thyroglobulin Ab [Units/volume] in Serum* |  |  | 
50890 | BLOOD CULTURE HOLD | CHEMISTRY | BLOOD |  |  | *50074* | ** | ** |  |  | 
50892 | BLUE TOP HOLD FROZEN | CHEMISTRY | BLOOD |  |  | *50678* | ** | ** |  |  | 
50893 | C-REACTIVE PROTEIN | CHEMISTRY | BLOOD | 1988-5 |  | *50091* | ** | ** |  |  | 
50897 | CALCIUM, TOTAL | CHEMISTRY | BLOOD | 2000-8 |  | *50079* | *17861-6* | *Calcium [Mass/volume] in Serum or Plasma* |  |  | 
50906 | CHLORIDE | CHEMISTRY | BLOOD | 2075-0 |  | *50083* | *2069-3* | *Chloride [Moles/volume] in Blood* |  |  | 
50907 | CHOLESTEROL RATIO (TOTAL/HDL) | CHEMISTRY | BLOOD | 9322-9 |  | *50084* | *32309-7* | *Cholesterol.total/Cholesterol.in HDL [Molar ratio] in Serum or Plasma* |  |  | 
50908 | CHOLESTEROL, HDL | CHEMISTRY | BLOOD | 2086-7 |  | *50122* | *2085-9* | *Cholesterol.in HDL [Mass/volume] in Serum or Plasma* |  |  | 
50909 | CHOLESTEROL, LDL, CALCULATED | CHEMISTRY | BLOOD | 2090-9 |  | *50135* | *13457-7* | *Cholesterol.in LDL [Mass/volume] in Serum or Plasma by calculation* |  |  | 
50915 | CREATINE KINASE, MB ISOENZYME | CHEMISTRY | BLOOD | 6773-6 |  | *50087* | *49551-5* | *Creatine kinase.MB [Mass/volume] in Blood* |  |  | 
50918 | CYCLOSPORIN | CHEMISTRY | BLOOD | 3521-2 |  | *50093* | *3520-4* | *Cyclosporine [Mass/volume] in Blood* |  |  | 
50926 | ETHANOL | CHEMISTRY | BLOOD | 5642-4 |  | *50099* | *5640-8* | *Ethanol [Mass/volume] in Blood* |  |  | 
50931 | FOLLICLE STIMULATING HORMONE | CHEMISTRY | BLOOD | 2286-3 |  | *50106* | *15067-2* | *Follitropin [Units/volume] in Serum or Plasma* |  |  | 
50934 | GENTAMICIN | CHEMISTRY | BLOOD | 3664-0 |  | *50108* | *35668-3* | *Gentamicin [Mass/volume] in Serum or Plasma* |  |  | 
50936 | GLUCOSE | CHEMISTRY | BLOOD | 6777-7 |  | *50112* | *2345-7* | *Glucose [Mass/volume] in Serum or Plasma* |  |  | 
50942 | HEPATITIS A VIRUS ANTIBODY | CHEMISTRY | BLOOD | 5183-9 |  | *50116* | *20575-7* | *Hepatitis A virus Ab [Presence] in Serum* |  |  | 
50945 | HEPATITIS B SURFACE ANTIBODY | CHEMISTRY | BLOOD | 5193-8 |  | *50118* | *32019-2* | *Hepatitis B virus surface Ab [Titer] in Serum* |  |  | 
50946 | HEPATITIS B SURFACE ANTIGEN | CHEMISTRY | BLOOD | 5196-1 |  | *50119* | *5195-3* | *Hepatitis B virus surface Ag [Presence] in Serum* |  |  | 
50947 | HEPATITIS B VIRUS CORE ANTIBODY | CHEMISTRY | BLOOD | 5187-0 |  | *50117* | *16933-4* | *Hepatitis B virus core Ab [Presence] in Serum* |  |  | 
50949 | HIV ANTIBODY | CHEMISTRY | BLOOD | 5220-9 |  | *50123* | ** | ** |  |  | 
50950 | HOMOCYSTEINE | CHEMISTRY | BLOOD | 13965-9 |  | *50125* | *20646-6* | *Homocystine [Moles/volume] in Serum or Plasma* |  |  | 
50951 | HUMAN CHORIONIC GONADOTROPIN | CHEMISTRY | BLOOD | 2119-6 |  | *50120* | *19080-1* | *Choriogonadotropin [Units/volume] in Serum or Plasma* |  |  | 
50962 | LITHIUM | CHEMISTRY | BLOOD | 3719-2 |  | *50139* | *14334-7* | *Lithium [Moles/volume] in Serum or Plasma* |  |  | 
50963 | LUTEINIZING HORMONE | CHEMISTRY | BLOOD | 1599-0 |  | *50137* | *10501-5* | *Lutropin [Units/volume] in Serum or Plasma* |  |  | 
50965 | MAGNESIUM | CHEMISTRY | BLOOD | 2601-3 |  | *50140* | *19123-9* | *Magnesium [Mass/volume] in Serum or Plasma* |  |  | 
50971 | PHENOBARBITAL | CHEMISTRY | BLOOD | 3947-9 |  | *50146* | *3948-7* | *Phenobarbital [Mass/volume] in Serum or Plasma* |  |  | 
50972 | PHENYTOIN | CHEMISTRY | BLOOD | 3967-7 |  | *50147* | *3968-5* | *Phenytoin [Mass/volume] in Serum or Plasma* |  |  | 
50983 | QUINIDINE | CHEMISTRY | BLOOD | 6694-4 |  | *50156* | *4014-7* | *Quinidine [Mass/volume] in Blood* |  |  | 
50986 | RHEUMATOID FACTOR | CHEMISTRY | BLOOD | 6928-6 |  | *50158* | ** | ** |  |  | 
50987 | SALICYLATE | CHEMISTRY | BLOOD | 4023-8 |  | *50072* | *3306-8* | *Acetylsalicylate [Mass/volume] in Serum or Plasma* |  |  | 
50993 | TESTOSTERONE | CHEMISTRY | BLOOD | 2993-4 |  | *50165* | *2986-8* | *Testosterone [Mass/volume] in Serum or Plasma* |  |  | 
50998 | THYROID STIMULATING HORMONE | CHEMISTRY | BLOOD | 3016-3 |  | *50175* | *3015-5* | *Thyrotropin [Units/volume] in Blood* |  |  | 
50999 | THYROXINE (T4) | CHEMISTRY | BLOOD | 3026-2 |  | *50163* | *3025-4* | *Thyroxine [Mass/volume] in Blood* |  |  | 
51002 | TOBRAMYCIN | CHEMISTRY | BLOOD | 4058-4 |  | *50169* | *35670-9* | *Tobramycin [Mass/volume] in Serum or Plasma* |  |  | 
51005 | TRIGLYCERIDES | CHEMISTRY | BLOOD | 1644-4 |  | *50174* | *2571-8* | *Triglyceride [Mass/volume] in Serum or Plasma* |  |  | 
51007 | TROPONIN I | CHEMISTRY | BLOOD | 10839-9 |  | *50188* | *42757-5* | *Troponin I.cardiac [Mass/volume] in Blood* |  |  | 
51008 | TROPONIN T | CHEMISTRY | BLOOD | 6598-7 |  | *50189* | *48425-3* | *Troponin T.cardiac [Mass/volume] in Blood* |  |  | 
51010 | UPTAKE RATIO | CHEMISTRY | BLOOD | 3050-2 |  | *50176* | ** | ** |  |  | 
51014 | VANCOMYCIN | CHEMISTRY | BLOOD | 4091-5 |  | *50180* | *20578-1* | *Vancomycin [Mass/volume] in Serum or Plasma* |  |  | 
51015 | VITAMIN B12 | CHEMISTRY | BLOOD | 2170-9 |  | *50181* | *16695-9* | *Cobalamin [Mass/volume] in Blood* |  |  | 
51036 | BICARBONATE, OTHER FLUID | CHEMISTRY | OTHER BODY FLUID |  |  | *50230* | *11211-0* | *Carbon dioxide, total [Moles/volume] in Body fluid* |  | LOINC code from old data probably wrong, should be bicarbonate | 
51072 | BICARBONATE, STOOL | CHEMISTRY | STOOL |  |  | *50249* | *14040-0* | *Carbon dioxide, total [Moles/volume] in Stool* |  | LOINC code from old data probably wrong, should be bicarbonate | 
51082 | ALBUMIN/CREATININE, URINE | CHEMISTRY | URINE | 14958-3 |  | *50287* | *9318-7* | *Albumin/Creatinine [Mass ratio] in Urine* |  |  | 
51088 | BICARBONATE, URINE | CHEMISTRY | URINE | 1964-6 |  | *50279* | *13538-4* | *Carbon dioxide, total [Moles/volume] in Urine* |  |  | 
51089 | CALCIUM, URINE | CHEMISTRY | URINE | 2004-0 |  | *50262* | *17862-4* | *Calcium [Mass/volume] in Urine* |  |  | 
51097 | HCG, URINE, QUALITATIVE | CHEMISTRY | URINE |  |  | *50281* | *2106-3* | *Choriogonadotropin [Presence] in Urine* |  |  | 
51099 | LENGTH OF URINE COLLECTION | CHEMISTRY | URINE |  |  | *50268* | *13362-9* | *Collection duration of Urine* |  |  | 
51100 | MAGNESIUM, URINE | CHEMISTRY | URINE | 2598-1 |  | *50270* | *19124-7* | *Magnesium [Mass/volume] in Urine* |  |  | 
51114 | TOTAL PROTEIN, URINE | CHEMISTRY | URINE | 2887-8 |  | *50278* | *2888-6* | *Protein [Mass/volume] in Urine* |  |  | 
51150 | ANISOCYTOSIS | HEMATOLOGY | BLOOD | 702-1 |  | *50326* | *38892-6* | *Anisocytosis [Presence] in Blood* |  |  | 
51151 | ANTICARDIOLIPIN ANTIBODY IGG | HEMATOLOGY | BLOOD |  |  | *50322* | *8065-5* | *Cardiolipin IgG Ab [Units/volume] in Serum* |  |  | 
51152 | ANTICARDIOLIPIN ANTIBODY IGM | HEMATOLOGY | BLOOD |  |  | *50323* | *3182-3* | *Cardiolipin IgM Ab [Units/volume] in Serum by Immunoassay* |  |  | 
51156 | ATYPICAL LYMPHOCYTES | HEMATOLOGY | BLOOD | 733-6 |  | *50331* | *13046-8* | *Lymphocytes Variant/100 leukocytes in Blood* |  |  | 
51157 | BANDS | HEMATOLOGY | BLOOD | 763-3 |  | *50332* | *26508-2* | *Neutrophils.band form/100 leukocytes in Blood* |  |  | 
51159 | BASOPHILS | HEMATOLOGY | BLOOD | 704-7 |  | *50333* | *30180-4* | *Basophils/100 leukocytes in Blood* |  |  | 
51161 | BLASTS | HEMATOLOGY | BLOOD | 708-8 |  | *50335* | *26446-5* | *Blasts/100 leukocytes in Blood* |  |  | 
51163 | BLOOD PARASITE SMEAR | HEMATOLOGY | BLOOD |  |  | *50425* | *24429-3* | *Parasite identified in Blood* |  |  | 
51191 | CD34 | HEMATOLOGY | BLOOD | 5465-0 |  | *50354* | *8125-7* | *CD34 cells/100 cells in Blood* |  |  | 
51210 | ELLIPTOCYTES | HEMATOLOGY | BLOOD | 6681-1 |  | *50371* | *11274-8* | *Elliptocytes [Presence] in Blood by Light microscopy* |  |  | 
51211 | ENVELOPE CELLS | HEMATOLOGY | BLOOD | 681-7 |  | *50372* | ** | ** |  |  | 
51213 | EOSINOPHILS | HEMATOLOGY | BLOOD | 711-2 |  | *50373* | *26450-7* | *Eosinophils/100 leukocytes in Blood* |  |  | 
51217 | FACTOR IX | HEMATOLOGY | BLOOD | 3188-0 |  | *50401* | *3187-2* | *Coagulation factor IX activity actual/normal in Platelet poor plasma by Coagulation assay* |  |  | 
51226 | FACTOR X | HEMATOLOGY | BLOOD | 3218-5 |  | *50469* | ** | ** |  |  | 
51232 | FACTOR XIII | HEMATOLOGY | BLOOD | 3240-9 |  | *50472* | *27815-0* | *Coagulation factor XIII activity actual/normal in Platelet poor plasma by Chromogenic method* |  |  | 
51238 | FRAGMENTED CELLS | HEMATOLOGY | BLOOD | 10373-9 |  | *50380* | *40746-0* | *Fragments [Presence] in Blood by Automated count* |  |  | 
51241 | H/O SMEAR | HEMATOLOGY | BLOOD |  |  | *50393* | *38924-7* | *TBX5 gene mutations found [Identifier] in Blood or Tissue by Molecular genetics method Nominal* | this loinc code looks super suspicious |  | 
51243 | HEMATOCRIT | HEMATOLOGY | BLOOD | 4544-3 |  | *50383* | *20570-8* | *Hematocrit [Volume Fraction] of Blood* |  |  | 
51245 | HEMOGLOBIN A2 | HEMATOLOGY | BLOOD | 4552-6 |  | *50388* | *4551-8* | *Hemoglobin A2/Hemoglobin.total in Blood* |  |  | 
51246 | HEMOGLOBIN C | HEMATOLOGY | BLOOD | 4561-7 |  | *50389* | *4563-3* | *Hemoglobin C/Hemoglobin.total in Blood* |  |  | 
51247 | HEMOGLOBIN F | HEMATOLOGY | BLOOD | 9749-3 |  | *50390* | *4576-5* | *Hemoglobin F/Hemoglobin.total in Blood* |  |  | 
51248 | HEMOGLOBLIN A | HEMATOLOGY | BLOOD | 10346-5 |  | *50387* | *4546-8* | *Hemoglobin A/Hemoglobin.total in Blood* |  |  | 
51249 | HEMOGLOBLIN S | HEMATOLOGY | BLOOD | 4622-7 |  | *50391* | *4625-0* | *Hemoglobin S/Hemoglobin.total in Blood* |  |  | 
51254 | HYPERSEGMENTED NEUTROPHILS | HEMATOLOGY | BLOOD | 766-6 |  | *50395* | *30450-1* | *Neutrophils.hypersegmented/100 leukocytes in Blood* |  |  | 
51256 | IMMUNOPHENOTYPING | HEMATOLOGY | BLOOD |  |  | *50400* | ** | ** |  |  | 
51258 | INPATIENT HEMATOLOGY/ONCOLOGY SMEAR | HEMATOLOGY | BLOOD |  |  | *50709* | ** | ** |  |  | 
51259 | INR(PT) | HEMATOLOGY | BLOOD | 5895-7 |  | *50399* | *34714-6* | *INR in Blood by Coagulation assay* |  |  | 
51263 | LEUKOCYTE ALKALINE PHOSPHATASE | HEMATOLOGY | BLOOD | 4659-9 |  | *50404* | *15112-6* | *Leukocyte phosphatase [Units/volume] in Leukocytes* |  |  | 
51266 | LYMPHOCYTES | HEMATOLOGY | BLOOD | 731-0 |  | *50408* | *26478-8* | *Lymphocytes/100 leukocytes in Blood* |  |  | 
51268 | MACROCYTES | HEMATOLOGY | BLOOD | 738-5 |  | *50409* | *30424-6* | *Macrocytes [Presence] in Blood* |  |  | 
51270 | MCH | HEMATOLOGY | BLOOD | 785-6 |  | *50411* | *28539-5* | *Erythrocyte mean corpuscular hemoglobin [Entitic mass]* |  |  | 
51271 | MCHC | HEMATOLOGY | BLOOD | 786-4 |  | *50412* | *28540-3* | *Erythrocyte mean corpuscular hemoglobin concentration [Mass/volume]* |  |  | 
51272 | MCV | HEMATOLOGY | BLOOD | 787-2 |  | *50413* | *30428-7* | *Erythrocyte mean corpuscular volume [Entitic volume]* |  |  | 
51274 | MICROCYTES | HEMATOLOGY | BLOOD | 741-9 |  | *50415* | *30434-5* | *Microcytes [Presence] in Blood* |  |  | 
51276 | MONOCYTES | HEMATOLOGY | BLOOD | 742-7 |  | *50417* | *26485-3* | *Monocytes/100 leukocytes in Blood* |  |  | 
51278 | NEUTROPHILS | HEMATOLOGY | BLOOD | 761-7 |  | *50419* | *26505-8* | *Neutrophils.segmented/100 leukocytes in Blood* |  |  | 
51279 | NUCLEATED RED CELLS | HEMATOLOGY | BLOOD | 772-4 |  | *50420* | *26461-4* | *Nucleated Erythrocytes/100 erythrocytes in Blood* |  |  | 
51281 | OTHER CELLS | HEMATOLOGY | BLOOD | 729-4 |  | *50422* | ** | ** |  |  | 
51287 | PLATELET COUNT | HEMATOLOGY | BLOOD | 777-3 |  | *50428* | *26515-7* | *Platelets [#/volume] in Blood* |  |  | 
51288 | PLATELET SMEAR | HEMATOLOGY | BLOOD | 778-1 |  | *50429* | *9317-9* | *Platelets [Presence] in Blood by Manual count* |  |  | 
51292 | PROMYELOCYTES | HEMATOLOGY | BLOOD | 781-5 |  | *50434* | *26524-9* | *Promyelocytes/100 leukocytes in Blood* |  |  | 
51297 | PT | HEMATOLOGY | BLOOD | 5902-2 |  | *50439* | *5964-2* | *Prothrombin time (PT) in Blood by Coagulation assay* |  |  | 
51299 | PTT | HEMATOLOGY | BLOOD | 5898-2 |  | *50440* | *3173-2* | *Activated partial thrombplastin time (aPTT) in Blood by Coagulation assay* |  |  | 
51302 | RDW | HEMATOLOGY | BLOOD | 788-0 |  | *50444* | *30385-9* | *Erythrocyte distribution width [Ratio]* |  |  | 
51304 | RED BLOOD CELLS | HEMATOLOGY | BLOOD | 789-8 |  | *50442* | *26453-1* | *Erythrocytes [#/volume] in Blood* |  |  | 
51310 | RETICULOCYTE, CELLULAR HEMOGLOBIN | HEMATOLOGY | BLOOD |  |  | *50321* | *14196-0* | *Reticulocytes [#/volume] in Red Blood Cells* |  |  | 
51313 | SEDIMENTATION RATE | HEMATOLOGY | BLOOD | 4537-7 |  | *50451* | *30341-2* | *Erythrocyte sedimentation rate* |  |  | 
51325 | VON WILLEBRAND FACTOR ANTIGEN | HEMATOLOGY | BLOOD | 6012-9 |  | *50465* | *27816-8* | *von Willebrand factor (vWf) Ag actual/normal in Platelet poor plasma by Immunologic method* |  |  | 
51327 | WHITE BLOOD CELLS | HEMATOLOGY | BLOOD | 804-5 |  | *50468* | *26464-8* | *Leukocytes [#/volume] in Blood* |  |  | 
51365 | IMMUNOPHENOTYPING | HEMATOLOGY | BONE MARROW |  |  | *50504* | ** | ** |  |  | 
51378 | IMMUNOPHENOTYPING | HEMATOLOGY | CEREBROSPINAL FLUID (CSF) |  |  | *50721* | ** | ** |  |  | 
51399 | JOINT CRYSTALS, BIREFRINGENCE | HEMATOLOGY | JOINT FLUID |  |  | *50532* | ** | ** |  |  | 
51401 | JOINT CRYSTALS, LOCATION | HEMATOLOGY | JOINT FLUID |  |  | *50536* | ** | ** |  |  | 
51402 | JOINT CRYSTALS, NUMBER | HEMATOLOGY | JOINT FLUID |  |  | *50543* | ** | ** |  |  | 
51403 | JOINT CRYSTALS, SHAPE | HEMATOLOGY | JOINT FLUID |  |  | *50547* | ** | ** |  |  | 
51454 | IMMUNOPHENOTYPING | HEMATOLOGY | OTHER BODY FLUID |  |  | *50584* | ** | ** |  |  | 
51492 | BLOOD, OCCULT | HEMATOLOGY | STOOL |  |  | *50619* | *2335-8* | *Hemoglobin.gastrointestinal [Presence] in Stool* |  |  | 
51493 | AMMONIUM BIURATE | HEMATOLOGY | URINE |  |  | *50621* | *12454-5* | *Urate crystals amorphous [Presence] in Urine sediment by Light microscopy* |  |  | 
51495 | BACTERIA | HEMATOLOGY | URINE | 5769-5 |  | *50624* | *25145-4* | *Bacteria [Presence] in Urine sediment by Light microscopy* |  |  | 
51496 | BILIRUBIN | HEMATOLOGY | URINE | 5770-3 |  | *50626* | *1977-8* | *Bilirubin [Presence] in Urine* |  |  | 
51504 | CHOLESTEROL CRYSTALS | HEMATOLOGY | URINE | 5777-8 |  | *50732* | ** | ** |  |  | 
51505 | CYSTEINE CRYSTALS | HEMATOLOGY | URINE | 5782-8 |  | *50635* | *34277-4* | *Cysteine [Moles/volume] in Urine* |  |  | 
51510 | GLUCOSE | HEMATOLOGY | URINE | 5792-7 |  | *50641* | *2350-7* | *Glucose [Mass/volume] in Urine* |  |  | 
51516 | KETONE | HEMATOLOGY | URINE | 5797-6 |  | *50647* | *49779-2* | *Ketones [Mass/volume] in Urine* |  |  | 
51518 | LEUKOCYTES | HEMATOLOGY | URINE | 5799-2 |  | *50648* | *33052-2* | *Leukocytes [Presence] in Urine* |  |  | 
51523 | PH | HEMATOLOGY | URINE | 5803-2 |  | *50653* | *2756-5* | *pH of Urine* |  |  | 
51526 | RBC | HEMATOLOGY | URINE | 5808-1 |  | *50656* | *13945-1* | *Erythrocytes [#/area] in Urine sediment by Microscopy high power field* |  |  | 
51540 | URINE CASTS, OTHER | HEMATOLOGY | URINE | 9842-6 |  | *50668* | ** | ** |  |  | 
51547 | UROBILINOGEN | HEMATOLOGY | URINE | 5818-0 |  | *50671* | *3107-0* | *Urobilinogen [Mass/volume] in Urine* |  |  | 
51553 | YEAST | HEMATOLOGY | URINE | 5822-2 |  | *50677* | *32356-8* | *Yeast [Presence] in Urine sediment by Light microscopy* |  |  | 
