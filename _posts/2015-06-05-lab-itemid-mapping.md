---
layout: page
title: "Lab ITEMID mapping"
category: app
date: 2015-06-05 15:53:24
---

The following table is a current mapping of ITEMIDs from the old MIMIC2v26 LABEVENTS table to the new MIMIC2v30 LABEVENTS table.
Every effort has been made to map the data to LOINC codes. LOINC codes are advantageous as they provide an ontology for recorded lab values. However, careful inspection shows that a matched pair of ITEMIDs may have distinct LOINC codes. This is usually attributable to the laboratory assigning a new LOINC code, which is done for many reasons, including changing the reagents of a laboratory test or changing the technique used to acquire the result.


ITEMID | LABEL | FLUID | CATEGORY | LOINC_CODE | OLD_LOINC_CODE | OLD_LOINC_DESCRIPTION | OLD_ITEMID | COMMENTS
------ | ----- | ----- | -------- | ---------- | -------------- | --------------------- | ---------- | --------
50852 | % HEMOGLOBIN A1C | BLOOD | CHEMISTRY | 4548-4 | 4548-4 | Hemoglobin A1c (glycated HgB)/Hemoglobin.total [Moles] in Blood | 50054 | Duplicate v26 ITEMID with 50183
51066 | 24 HR CALCIUM | URINE | CHEMISTRY |  | 6874-2 | Calcium [Mass/time] in 24 hour Urine | 50253 | 
51067 | 24 HR CREATININE | URINE | CHEMISTRY |  | 2162-6 | Creatinine [Mass/time] in 24 hour Urine | 50254 | 
51068 | 24 HR PROTEIN | URINE | CHEMISTRY |  | 2889-4 | Protein [Mass/time] in 24 hour Urine | 50255 | 
50853 | 25-OH VITAMIN D | BLOOD | CHEMISTRY |  |  |  |  | 
51011 | <ALBUMIN> | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  | 1746-7 | Albumin [Mass/volume] in Cerebral spinal fluid | 50199 | 
50854 | ABSOLUTE A1C | BLOOD | CHEMISTRY |  | 4548-4 | Hemoglobin A1c (glycated HgB)/Hemoglobin.total [Moles] in Blood | 50183 | 
51130 | ABSOLUTE CD3 COUNT | BLOOD | HEMATOLOGY | 8124-0 | 8124-0 | CD3 cells/100 cells in Blood | 50352 | 
51131 | ABSOLUTE CD4 COUNT | BLOOD | HEMATOLOGY | 8128-1 | 8128-1 | CD4 cells/100 cells in Blood | 50356 | 
51132 | ABSOLUTE CD8 COUNT | BLOOD | HEMATOLOGY | 8138-0 | 8138-0 | CD8 cells/100 cells in Blood | 50367 | 
50855 | ABSOLUTE HEMOGLOBIN | BLOOD | CHEMISTRY |  | 718-7 | Hemoglobin [Mass/volume] in Blood | 50184 | 
51133 | ABSOLUTE LYMPHOCYTE COUNT | BLOOD | HEMATOLOGY |  | 26474-7 | Lymphocytes [#/volume] in Blood | 50320 | 
51134 | ACANTHOCYTES | BLOOD | HEMATOLOGY | 7789-1 | 7789-1 | Acanthocytes [Presence] in Blood by Light microscopy | 50324 | 
50856 | ACETAMINOPHEN | BLOOD | CHEMISTRY | 3297-9 | 3298-7 | Acetaminophen [Mass/volume] in Serum or Plasma | 50056 | 
50857 | ACETONE | BLOOD | CHEMISTRY | 5567-3 | 5567-3 | Acetone [Presence] in Serum or Plasma | 50057 | 
51521 | ACID PHOS | BLOOD | CHEMISTRY |  | 1711-1 | Acid phosphatase [Enzymatic activity/volume] in Blood | 50058 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50858 | ACID PHOSPHATASE | BLOOD | CHEMISTRY | 1715-2 |  |  | 50693 | 
50859 | "ACID PHOSPHATASE, NON-PROSTATIC" | BLOOD | CHEMISTRY |  |  |  | 50143 | 
51135 | ADP | BLOOD | HEMATOLOGY |  |  |  | 50325 | 
51530 | AF-AFP | OTHER BODY FLUID | CHEMISTRY |  |  |  | 50700 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50860 | "AFP, MATERNAL SCREEN" | BLOOD | CHEMISTRY |  |  |  | 50687 | 
50861 | ALANINE AMINOTRANSFERASE (ALT) | BLOOD | CHEMISTRY | 1742-6 | 1742-6 | Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma | 50062 | 
50862 | ALBUMIN | BLOOD | CHEMISTRY | 1751-7 | 1751-7 | Albumin [Mass/volume] in Serum or Plasma | 50060 | 
50835 | "ALBUMIN, ASCITES" | ASCITES | CHEMISTRY |  | 1749-1 | Albumin [Mass/volume] in Peritoneal fluid | 50037 | 
51025 | "ALBUMIN, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 1747-5 | Albumin [Mass/volume] in Body fluid | 50211 | 
51019 | "ALBUMIN, JOINT FLUID" | JOINT FLUID | CHEMISTRY |  |  |  | 50227 | 
51046 | "ALBUMIN, PLEURAL" | PLEURAL | CHEMISTRY |  | 1748-3 | Albumin [Mass/volume] in Pleural fluid | 50234 | 
51069 | "ALBUMIN, URINE" | URINE | CHEMISTRY |  | 1754-1 | Albumin [Mass/volume] in Urine | 50288 | 
51070 | "ALBUMIN/CREATININE, URINE" | URINE | CHEMISTRY | 14958-3 | 9318-7 | Albumin/Creatinine [Mass ratio] in Urine | 50287 | 
50863 | ALKALINE PHOSPHATASE | BLOOD | CHEMISTRY | 6768-6 | 1783-0 | Alkaline phosphatase [Enzymatic activity/volume] in Blood | 50061 | 
51136 | ALPHA ANTIPLASMIN | BLOOD | HEMATOLOGY |  |  |  | 50327 | 
50864 | ALPHA-FETOPROTEIN | BLOOD | CHEMISTRY | 1834-1 | 1834-1 | Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma | 50059 | 
50801 | ALVEOLAR-ARTERIAL GRADIENT | BLOOD | BLOOD GAS |  | 19991-9 | Oxygen.alveolar - arterial [Partial pressure] Respiratory system | 50001 | 
50865 | AMIKACIN | BLOOD | CHEMISTRY |  |  |  |  | 
50866 | AMMONIA | BLOOD | CHEMISTRY |  | 16362-6 | Ammonia [Moles/volume] in Plasma | 50064 | 
51461 | AMMONIUM BIURATE | URINE | HEMATOLOGY |  | 12454-5 | Urate crystals amorphous [Presence] in Urine sediment by Light microscopy | 50621 | 
51462 | AMORPHOUS CRYSTALS | URINE | HEMATOLOGY | 8246-1 | 8246-1 | Amorphous sediment [Presence] in Urine sediment by Light microscopy | 50622 | 
51071 | "AMPHETAMINE SCREEN, URINE" | URINE | CHEMISTRY |  | 3349-8 | Amphetamines [Presence] in Urine | 50289 | 
50867 | AMYLASE | BLOOD | CHEMISTRY | 6697-7 | 1798-8 | Amylase [Enzymatic activity/volume] in Serum or Plasma | 50065 | 
50836 | "AMYLASE, ASCITES" | ASCITES | CHEMISTRY |  | 1797-0 | Amylase [Enzymatic activity/volume] in Peritoneal fluid | 50038 | 
51026 | "AMYLASE, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 1795-4 | Amylase [Enzymatic activity/volume] in Body fluid | 50212 | 
51020 | "AMYLASE, JOINT FLUID" | JOINT FLUID | CHEMISTRY |  | 14388-3 | Amylase [Enzymatic activity/volume] in Synovial fluid | 50206 | 
51047 | "AMYLASE, PLEURAL" | PLEURAL | CHEMISTRY |  | 1796-2 | Amylase [Enzymatic activity/volume] in Pleural fluid | 50235 | 
51072 | "AMYLASE, URINE" | URINE | CHEMISTRY |  | 1799-6 | Amylase [Enzymatic activity/volume] in Urine | 50261 | 
51073 | "AMYLASE/CREATININE RATIO, URINE" | URINE | CHEMISTRY |  | 34235-2 | Amylase/Creatinine [Ratio] in Urine | 50260 | 
50868 | ANION GAP | BLOOD | CHEMISTRY | 1863-0 | 41276-7 | Anion gap in Blood | 50068 | 
51137 | ANISOCYTOSIS | BLOOD | HEMATOLOGY | 702-1 | 38892-6 | Anisocytosis [Presence] in Blood | 50326 | 
50869 | ANTI-DGP (IGA/IGG) | BLOOD | CHEMISTRY |  |  |  | 50696 | 
50870 | "ANTI-GLIADIN ANTIBODY, IGA" | BLOOD | CHEMISTRY |  | 7893-1 | Gliadin Ab [Units/volume] in Serum | 50110 | 
51520 | ANTI-MC | BLOOD | CHEMISTRY |  | 32042-4 | Thyroperoxidase Ab [Presence] in Serum | 50069 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50871 | ANTI-MITOCHONDRIAL ANTIBODY | BLOOD | CHEMISTRY |  | 14236-4 | Mitochondria Ab [Presence] in Serum | 50063 | possible mismatch
50872 | ANTI-NEUTROPHIL CYTOPLASMIC ANTIBODY | BLOOD | CHEMISTRY |  | 35279-9 | Neutrophil cytoplasmic Ab [Presence] in Serum by Immunofluorescence | 50067 | 
50873 | ANTI-NUCLEAR ANTIBODY | BLOOD | CHEMISTRY | 5047-6 | 8061-4 | Nuclear Ab [Presence] in Serum | 50066 | 
50874 | "ANTI-NUCLEAR ANTIBODY, TITER" | BLOOD | CHEMISTRY | 8061-4 | 5048-4 | Nuclear Ab [Titer] in Serum by Immunofluorescence | 50168 | 
50875 | ANTI-PARIETAL CELL ANTIBODY | BLOOD | CHEMISTRY |  | 26969-6 | Parietal cell Ab [Presence] in Serum by Immunofluorescence | 50155 | 
50876 | ANTI-SMOOTH MUSCLE ANTIBODY | BLOOD | CHEMISTRY |  | 14252-1 | Smooth muscle Ab [Presence] in Serum | 50161 | 
50877 | ANTI-THYROGLOBULIN ANTIBODIES | BLOOD | CHEMISTRY | 5380-1 | 8098-6 | Thyroglobulin Ab [Units/volume] in Serum | 50070 | 
51138 | ANTICARDIOLIPIN ANTIBODY IGG | BLOOD | HEMATOLOGY |  | 8065-5 | Cardiolipin IgG Ab [Units/volume] in Serum | 50322 | 
51139 | ANTICARDIOLIPIN ANTIBODY IGM | BLOOD | HEMATOLOGY |  | 3182-3 | Cardiolipin IgM Ab [Units/volume] in Serum by Immunoassay | 50323 | 
51140 | ANTITHROMBIN | BLOOD | HEMATOLOGY |  | 27811-9 | Antithrombin actual/normal in Platelet poor plasma by Chromogenic method | 50330 | 
51141 | APT TEST | BLOOD | HEMATOLOGY |  |  |  | 50328 | 
51142 | ARACHADONIC ACID | BLOOD | HEMATOLOGY |  |  |  | 50329 | 
50878 | ASPARATE AMINOTRANSFERASE (AST) | BLOOD | CHEMISTRY | 1920-8 | 1920-8 | Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma | 50073 | 
51110 | ATYPICAL LYMPHOCYTES | ASCITES | HEMATOLOGY |  | 33369-0 | Lymphocytes Variant/100 leukocytes in Peritoneal fluid | 50298 | 
51143 | ATYPICAL LYMPHOCYTES | BLOOD | HEMATOLOGY | 733-6 | 13046-8 | Lymphocytes Variant/100 leukocytes in Blood | 50331 | 
51343 | ATYPICAL LYMPHOCYTES | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30416-2 | Lymphocytes Variant/100 leukocytes in Cerebral spinal fluid | 50509 | 
51365 | ATYPICAL LYMPHOCYTES | JOINT FLUID | HEMATOLOGY |  | 33371-6 | Lymphocytes Variant/100 leukocytes in Synovial fluid | 50529 | 
51385 | ATYPICAL LYMPHOCYTES | OTHER BODY FLUID | HEMATOLOGY |  | 30417-0 | Lymphocytes Variant/100 leukocytes in Body fluid | 50549 | 
51440 | ATYPICAL LYMPHOCYTES | PLEURAL | HEMATOLOGY |  | 33370-8 | Lymphocytes Variant/100 leukocytes in Pleural fluid | 50600 | 
51463 | BACTERIA | URINE | HEMATOLOGY | 5769-5 | 25145-4 | Bacteria [Presence] in Urine sediment by Light microscopy | 50624 | 
51111 | BANDS | ASCITES | HEMATOLOGY |  |  |  | 50299 | 
51144 | BANDS | BLOOD | HEMATOLOGY | 763-3 | 26508-2 | Neutrophils.band form/100 leukocytes in Blood | 50332 | 
51344 | BANDS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26509-0 | Neutrophils.band form/100 leukocytes in Cerebral spinal fluid | 50510 | 
51366 | BANDS | JOINT FLUID | HEMATOLOGY |  | 33361-7 | Neutrophils.band form/100 leukocytes in Synovial fluid | 50530 | 
51386 | BANDS | OTHER BODY FLUID | HEMATOLOGY |  | 26510-8 | Neutrophils.band form/100 leukocytes in Body fluid | 50550 | 
51441 | BANDS | PLEURAL | HEMATOLOGY |  |  |  | 50601 | 
50879 | BARBITURATE SCREEN | BLOOD | CHEMISTRY |  | 3376-1 | "Barbiturates [Presence] in Serum, Plasma or Blood" | 50186 | 
51074 | "BARBITURATE SCREEN, URINE" | URINE | CHEMISTRY | 3377-9 | 3377-9 | Barbiturates [Presence] in Urine | 50290 | 
50802 | BASE EXCESS | BLOOD | BLOOD GAS |  | 11555-0 | Base excess in Blood | 50002 | 
51145 | BASOPHILIC STIPPLING | BLOOD | HEMATOLOGY | 703-9 | 703-9 | Basophilic stippling [Presence] in Blood by Light microscopy | 50456 | 
51112 | BASOPHILS | ASCITES | HEMATOLOGY |  | 35069-4 | Basophils/100 leukocytes in Peritoneal fluid | 50300 | 
51146 | BASOPHILS | BLOOD | HEMATOLOGY | 704-7 | 30180-4 | Basophils/100 leukocytes in Blood | 50333 | 
51345 | BASOPHILS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30374-3 | Basophils/100 leukocytes in Cerebral spinal fluid | 50511 | 
51367 | BASOPHILS | JOINT FLUID | HEMATOLOGY |  | 17833-5 | Basophils/100 leukocytes in Synovial fluid | 50531 | 
51387 | BASOPHILS | OTHER BODY FLUID | HEMATOLOGY |  | 28543-7 | Basophils/100 leukocytes in Body fluid | 50551 | 
51442 | BASOPHILS | PLEURAL | HEMATOLOGY |  | 35070-2 | Basophils/100 leukocytes in Pleural fluid | 50602 | 
50880 | BENZODIAZEPINE SCREEN | BLOOD | CHEMISTRY |  | 42662-7 | Benzodiazepines [Presence] in Blood | 50187 | 
51075 | "BENZODIAZEPINE SCREEN, URINE" | URINE | CHEMISTRY |  | 3390-2 | Benzodiazepines [Presence] in Urine | 50291 | 
50881 | BETA-2 MICROGLOBULIN | BLOOD | CHEMISTRY |  | 32731-2 | Beta 2 globulin [Mass/volume] in Serum or Plasma by Electrophoresis | 50185 | 
50882 | BICARBONATE | BLOOD | CHEMISTRY | 1963-8 | 1963-8 | Bicarbonate [Moles/volume] in Serum | 50172 | 
50837 | "BICARBONATE, ASCITES" | ASCITES | CHEMISTRY |  | 54360-3 | Bicarbonate [Moles/volume] in Peritoneal fluid | 50041 | 
51027 | "BICARBONATE, OTHER FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 11211-0 | "Carbon dioxide, total [Moles/volume] in Body fluid" | 50230 | "LOINC code from old data probably wrong, should be bicarbonate"
51048 | "BICARBONATE, PLEURAL" | PLEURAL | CHEMISTRY |  | 54361-1 | Bicarbonate [Moles/volume] in Pleural fluid | 50238 | 
51061 | "BICARBONATE, STOOL" | STOOL | CHEMISTRY |  | 14040-0 | "Carbon dioxide, total [Moles/volume] in Stool" | 50249 | "LOINC code from old data probably wrong, should be bicarbonate"
51076 | "BICARBONATE, URINE" | URINE | CHEMISTRY | 1964-6 | 13538-4 | "Carbon dioxide, total [Moles/volume] in Urine" | 50279 | 
51464 | BILIRUBIN | URINE | HEMATOLOGY | 5770-3 | 1977-8 | Bilirubin [Presence] in Urine | 50626 | 
51465 | BILIRUBIN CRYSTALS | URINE | HEMATOLOGY | 5771-1 | 5771-1 | Bilirubin crystals [Presence] in Urine sediment by Light microscopy | 50625 | 
50883 | "BILIRUBIN, DIRECT" | BLOOD | CHEMISTRY | 1968-7 | 1968-7 | Direct bilirubin [Mass/volume] in Serum or Plasma | 50096 | 
50884 | "BILIRUBIN, INDIRECT" | BLOOD | CHEMISTRY | 1971-1 | 1971-1 | Indirect bilirubin [Mass/volume] in Serum or Plasma | 50127 | 
50885 | "BILIRUBIN, TOTAL" | BLOOD | CHEMISTRY | 1975-2 | 1975-2 | Bilirubin [Mass/volume] in Serum or Plasma | 50170 | 
50838 | "BILIRUBIN, TOTAL, ASCITES" | ASCITES | CHEMISTRY |  | 14422-0 | Bilirubin [Mass/volume] in Peritoneal fluid | 50050 | 
51028 | "BILIRUBIN, TOTAL, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 1974-5 | Bilirubin [Mass/volume] in Body fluid | 50228 | 
51012 | "BILIRUBIN, TOTAL, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  | 1973-7 | Bilirubin [Mass/volume] in Cerebral spinal fluid | 50205 | 
51049 | "BILIRUBIN, TOTAL, PLEURAL" | PLEURAL | CHEMISTRY |  | 14421-2 | Bilirubin [Mass/volume] in Pleural fluid | 50245 | 
51147 | BITE CELLS | BLOOD | HEMATOLOGY | 10371-3 | 10371-3 | Bite cells [Presence] in Blood by Light microscopy | 50334 | 
51113 | BLASTS | ASCITES | HEMATOLOGY |  |  |  |  | 
51148 | BLASTS | BLOOD | HEMATOLOGY | 708-8 | 26446-5 | Blasts/100 leukocytes in Blood | 50335 | 
51346 | BLASTS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26447-3 | Blasts/100 leukocytes in Cerebral spinal fluid | 50512 | 
51443 | BLASTS | PLEURAL | HEMATOLOGY |  |  |  | 50731 | 
51149 | BLEEDING TIME | BLOOD | HEMATOLOGY |  | 11067-6 | Bleeding time | 50336 | 
51466 | BLOOD | URINE | HEMATOLOGY |  | 5794-3 | Hemoglobin [Presence] in Urine by Test strip | 50627 | 
50886 | BLOOD CULTURE HOLD | BLOOD | CHEMISTRY |  |  |  | 50074 | 
51150 | BLOOD PARASITE SMEAR | BLOOD | HEMATOLOGY |  | 24429-3 | Parasite identified in Blood | 50425 | 
51460 | "BLOOD, OCCULT" | STOOL | HEMATOLOGY |  | 2335-8 | Hemoglobin.gastrointestinal [Presence] in Stool | 50619 | 
50887 | BLUE TOP HOLD | BLOOD | CHEMISTRY |  |  |  | 50124 | 
50888 | BLUE TOP HOLD FROZEN | BLOOD | CHEMISTRY |  |  |  | 50678 | 
51467 | BROAD CASTS | URINE | HEMATOLOGY |  | 18487-9 | Broad casts [#/area] in Urine sediment by Microscopy low power field | 50628 | 
51151 | BURR CELLS | BLOOD | HEMATOLOGY | 7790-9 | 7790-9 | Burr cells [Presence] in Blood by Light microscopy | 50337 | 
51525 | Billed | BLOOD | CHEMISTRY |  |  |  | 50679 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50889 | C-REACTIVE PROTEIN | BLOOD | CHEMISTRY | 1988-5 |  |  | 50091 | 
50890 | C3 | BLOOD | CHEMISTRY |  | 4485-9 | Complement C3 [Mass/volume] in Serum or Plasma | 50075 | 
50891 | C4 | BLOOD | CHEMISTRY |  | 4498-2 | Complement C4 [Mass/volume] in Serum or Plasma | 50076 | 
50892 | CA-125 | BLOOD | CHEMISTRY |  | 10334-1 | Cancer Ag 125 [Units/volume] in Serum or Plasma | 50077 | 
51468 | CALCIUM CARBONATE CRYSTALS | URINE | HEMATOLOGY | 5773-7 | 5773-7 | Calcium carbonate crystals [Presence] in Urine sediment by Light microscopy | 50629 | 
51469 | CALCIUM OXALATE CRYSTALS | URINE | HEMATOLOGY | 5774-5 | 5774-5 | Calcium oxalate crystals [Presence] in Urine sediment by Light microscopy | 50630 | 
51470 | CALCIUM PHOSPHATE CRYSTALS | URINE | HEMATOLOGY | 5775-2 | 5775-2 | Calcium phosphate crystals [Presence] in Urine sediment by Light microscopy | 50631 | 
51029 | "CALCIUM, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 15155-5 | Calcium [Mass/volume] in Body fluid | 50213 | 
50893 | "CALCIUM, TOTAL" | BLOOD | CHEMISTRY | 2000-8 | 17861-6 | Calcium [Mass/volume] in Serum or Plasma | 50079 | 
51077 | "CALCIUM, URINE" | URINE | CHEMISTRY | 2004-0 | 17862-4 | Calcium [Mass/volume] in Urine | 50262 | 
50803 | "CALCULATED BICARBONATE, WHOLE BLOOD" | BLOOD | BLOOD GAS |  | 1959-6 | Bicarbonate [Moles/volume] in Blood | 50022 | 
50894 | CALCULATED FREE TESTOSTERONE | BLOOD | CHEMISTRY | 2991-8 | 2991-8 | Testosterone Free [Mass/volume] in Serum or Plasma | 50105 | 
50895 | CALCULATED TBG | BLOOD | CHEMISTRY | 3027-0 | 3027-0 | Thyroxine/Thyroxine binding globulin [Mass ratio] in Serum or Plasma | 50191 | 
50896 | CALCULATED THYROXINE (T4) INDEX | BLOOD | CHEMISTRY |  | 32215-6 | Thyroxine free index in Serum or Plasma | 50164 | 
50804 | CALCULATED TOTAL CO2 | BLOOD | BLOOD GAS |  | 1959-6 | Bicarbonate [Moles/volume] in Blood | 50025 | 
50897 | CALL | BLOOD | CHEMISTRY |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
50898 | CANCER ANTIGEN 27.29 | BLOOD | CHEMISTRY |  | 17842-6 | Cancer Ag 27-29 [Units/volume] in Serum or Plasma | 50078 | 
50899 | CARBAMAZEPINE | BLOOD | CHEMISTRY | 3432-2 | 3432-2 | Carbamazepine [Mass/volume] in Serum or Plasma | 50081 | 
50805 | CARBOXYHEMOGLOBIN | BLOOD | BLOOD GAS |  | 20563-3 | Carboxyhemoglobin/Hemoglobin.total in Blood | 50003 | 
50900 | CARCINOEMBYRONIC ANTIGEN (CEA) | BLOOD | CHEMISTRY | 2039-6 | 2039-6 | Carcinoembryonic Ag [Mass/volume] in Serum or Plasma | 50082 | 
51152 | CD10 | BLOOD | HEMATOLOGY |  | 8107-5 | CD10 cells/100 cells in Blood | 50338 | 
51303 | CD10 | BONE MARROW | HEMATOLOGY |  | 51216-0 | CD10 cells/100 cells in Bone marrow | 50474 | 
51388 | CD10 | OTHER BODY FLUID | HEMATOLOGY |  | 51217-8 | CD10 cells/100 cells in Body fluid | 50552 | 
51153 | CD103 | BLOOD | HEMATOLOGY |  |  |  | 50706 | 
51304 | CD103 | BONE MARROW | HEMATOLOGY |  | 51221-0 | CD103 cells/100 cells in Bone marrow | 50475 | 
51389 | CD103 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50724 | 
51154 | CD117 | BLOOD | HEMATOLOGY |  | 17107-4 | CD117 cells/100 cells in Blood | 50339 | 
51305 | CD117 | BONE MARROW | HEMATOLOGY |  | 42866-4 | CD117 cells/100 cells in Bone marrow | 50476 | 
51390 | CD117 | OTHER BODY FLUID | HEMATOLOGY |  | 42867-2 | CD117 cells/100 cells in Body fluid | 50553 | 
51155 | CD11C | BLOOD | HEMATOLOGY |  | 8109-1 | CD11c cells/100 cells in Blood | 50340 | 
51306 | CD11C | BONE MARROW | HEMATOLOGY |  | 33202-3 | CD11c cells/100 cells in Bone marrow | 50477 | 
51391 | CD11C | OTHER BODY FLUID | HEMATOLOGY |  | 51232-7 | CD11c cells/100 cells in Body fluid | 50554 | 
51156 | CD13 | BLOOD | HEMATOLOGY |  | 8110-9 | CD13 cells/100 cells in Blood | 50341 | 
51307 | CD13 | BONE MARROW | HEMATOLOGY |  | 51237-6 | CD13 cells/100 cells in Bone marrow | 50478 | 
51392 | CD13 | OTHER BODY FLUID | HEMATOLOGY |  | 51238-4 | CD13 cells/100 cells in Body fluid | 50555 | 
51157 | CD138 | BLOOD | HEMATOLOGY |  | 42869-8 | CD138 cells/100 cells in Blood | 50342 | 
51308 | CD138 | BONE MARROW | HEMATOLOGY |  |  |  | 50716 | 
51393 | CD138 | OTHER BODY FLUID | HEMATOLOGY |  | 42871-4 | CD138 cells/100 cells in Body fluid | 50556 | 
51158 | CD14 | BLOOD | HEMATOLOGY |  | 8111-7 | CD14 cells/100 cells in Blood | 50343 | 
51309 | CD14 | BONE MARROW | HEMATOLOGY |  | 32507-6 | CD14 cells/100 cells in Bone marrow | 50479 | 
51394 | CD14 | OTHER BODY FLUID | HEMATOLOGY |  | 51248-3 | CD14 cells/100 cells in Body fluid | 50557 | 
51159 | CD15 | BLOOD | HEMATOLOGY |  | 17117-3 | CD15 cells/100 cells in Blood | 50344 | 
51310 | CD15 | BONE MARROW | HEMATOLOGY |  | 51251-7 | CD15 cells/100 cells in Bone marrow | 50480 | 
51395 | CD15 | OTHER BODY FLUID | HEMATOLOGY |  | 51252-5 | CD15 cells/100 cells in Body fluid | 50558 | 
51160 | CD15/56 | BLOOD | HEMATOLOGY |  | 18267-5 | CD16+CD56+ cells/100 cells in Blood | 50346 | 
51161 | CD16 | BLOOD | HEMATOLOGY |  | 8115-8 | CD16 cells/100 cells in Blood | 50345 | 
51311 | CD16 | BONE MARROW | HEMATOLOGY |  |  |  | 50481 | 
51396 | CD16 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50725 | 
51312 | CD16/56 | BONE MARROW | HEMATOLOGY |  | 51255-8 | CD16+CD56+ cells/100 cells in Bone marrow | 50482 | 
51397 | CD16/56 | OTHER BODY FLUID | HEMATOLOGY |  | 18268-3 | CD16+CD56+ cells/100 cells in Body fluid | 50559 | 
51162 | CD16/56 ABSOLUTE COUNT | BLOOD | HEMATOLOGY |  |  |  |  | look for CD16+CD56 [#/volume] LOINC
51163 | CD16/56% | BLOOD | HEMATOLOGY |  | 18267-5 | CD16+CD56+ cells/100 cells in Blood | 50346 | 
51164 | CD19 | BLOOD | HEMATOLOGY |  | 8117-4 | CD19 cells/100 cells in Blood | 50347 | 
51313 | CD19 | BONE MARROW | HEMATOLOGY |  | 32525-8 | CD19 cells/100 cells in Bone marrow | 50483 | 
51398 | CD19 | OTHER BODY FLUID | HEMATOLOGY |  | 17829-3 | CD19 cells/100 cells in Body fluid | 50560 | 
51165 | CD19 % | BLOOD | HEMATOLOGY |  |  |  |  | 
51166 | CD19 ABSOLUTE COUNT | BLOOD | HEMATOLOGY |  |  |  |  | 
51167 | CD2 | BLOOD | HEMATOLOGY |  | 8118-2 | CD2 cells/100 cells in Blood | 50348 | 
51314 | CD2 | BONE MARROW | HEMATOLOGY |  | 32527-4 | CD2 cells/100 cells in Bone marrow | 50484 | 
51399 | CD2 | OTHER BODY FLUID | HEMATOLOGY |  | 17827-7 | CD2 cells/100 cells in Body fluid | 50561 | 
51168 | CD20 | BLOOD | HEMATOLOGY |  | 8119-0 | CD20 cells/100 cells in Blood | 50349 | 
51315 | CD20 | BONE MARROW | HEMATOLOGY |  |  |  | 50485 | 
51400 | CD20 | OTHER BODY FLUID | HEMATOLOGY |  | 57418-6 | CD20 cells/100 cells in Body fluid | 50562 | 
51169 | CD20 % | BLOOD | HEMATOLOGY |  |  |  |  | 
51170 | CD20 ABSOLUTE COUNT | BLOOD | HEMATOLOGY |  |  |  |  | 
51171 | CD22 | BLOOD | HEMATOLOGY |  | 14017-8 | CD22 cells/100 cells in Blood | 50350 | 
51316 | CD22 | BONE MARROW | HEMATOLOGY |  |  |  | 50717 | 
51401 | CD22 | OTHER BODY FLUID | HEMATOLOGY |  | 42875-5 | CD22 cells/100 cells in Body fluid | 50563 | 
51172 | CD23 | BLOOD | HEMATOLOGY |  | 14018-6 | CD23 cells/100 cells in Blood | 50351 | 
51317 | CD23 | BONE MARROW | HEMATOLOGY |  | 51268-1 | CD23 cells/100 cells in Bone marrow | 50486 | 
51402 | CD23 | OTHER BODY FLUID | HEMATOLOGY |  | 51269-9 | CD23 cells/100 cells in Body fluid | 50564 | 
51173 | CD25 | BLOOD | HEMATOLOGY |  |  |  | 50707 | 
51318 | CD25 | BONE MARROW | HEMATOLOGY |  |  |  | 50718 | 
51403 | CD25 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50726 | 
51319 | CD3 | BONE MARROW | HEMATOLOGY |  | 32529-0 | CD3 cells/100 cells in Bone marrow | 50487 | 
51404 | CD3 | OTHER BODY FLUID | HEMATOLOGY |  | 17826-9 | CD3 cells/100 cells in Body fluid | 50565 | 
51174 | CD3 % | BLOOD | HEMATOLOGY |  |  |  |  | 
51175 | CD3 ABSOLUTE COUNT | BLOOD | HEMATOLOGY |  | 8122-4 | CD3 cells [#/volume] in Blood | 50317 | 
51176 | "CD3 CELLS, PERCENT" | BLOOD | HEMATOLOGY | 8122-4 | 8124-0 | CD3 cells/100 cells in Blood | 50352 | 
51177 | CD33 | BLOOD | HEMATOLOGY |  | 8102-6 | CD33 cells/100 cells in Blood | 50353 | 
51320 | CD33 | BONE MARROW | HEMATOLOGY |  | 51293-9 | CD33 cells/100 cells in Bone marrow | 50488 | 
51405 | CD33 | OTHER BODY FLUID | HEMATOLOGY |  | 51294-7 | CD33 cells/100 cells in Body fluid | 50566 | 
51178 | CD34 | BLOOD | HEMATOLOGY | 5465-0 | 8125-7 | CD34 cells/100 cells in Blood | 50354 | 
51321 | CD34 | BONE MARROW | HEMATOLOGY |  | 57400-4 | CD34 cells/100 cells in Bone marrow | 50489 | 
51406 | CD34 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50567 | 
51179 | CD38 | BLOOD | HEMATOLOGY |  | 8126-5 | CD38 cells/100 cells in Blood | 50355 | 
51322 | CD38 | BONE MARROW | HEMATOLOGY |  |  |  | 50719 | 
51407 | CD38 | OTHER BODY FLUID | HEMATOLOGY |  | 51299-6 | CD38 cells/100 cells in Body fluid | 50568 | 
51323 | CD4 | BONE MARROW | HEMATOLOGY |  | 51301-0 | CD4 cells/100 cells in Bone marrow | 50490 | 
51408 | CD4 | OTHER BODY FLUID | HEMATOLOGY |  | 17822-8 | CD4 cells/100 cells in Body fluid | 50569 | 
51180 | "CD4 CELLS, PERCENT" | BLOOD | HEMATOLOGY | 8127-3 | 8127-3 | CD4 cells [#/volume] in Blood | 50318 | 
51181 | CD4/CD8 RATIO | BLOOD | HEMATOLOGY |  | 8129-9 | CD4 cells/CD8 Cells [# Ratio] in Blood | 50357 | 
51409 | CD4/CD8 RATIO | OTHER BODY FLUID | HEMATOLOGY |  | 18266-7 | CD4 cells/CD8 Cells [# Ratio] in Body fluid | 50570 | 
51182 | CD41 | BLOOD | HEMATOLOGY |  | 17148-8 | CD41 cells/100 cells in Blood | 50358 | 
51324 | CD41 | BONE MARROW | HEMATOLOGY |  | 51319-2 | CD41 cells/100 cells in Bone marrow | 50491 | 
51410 | CD41 | OTHER BODY FLUID | HEMATOLOGY |  | 51320-0 | CD41 cells/100 cells in Body fluid | 50571 | 
51183 | CD45 | BLOOD | HEMATOLOGY |  | 8130-7 | CD45 cells/100 cells in Blood | 50359 | 
51325 | CD45 | BONE MARROW | HEMATOLOGY |  | 51340-8 | CD45 cells/100 cells in Bone marrow | 50492 | 
51411 | CD45 | OTHER BODY FLUID | HEMATOLOGY |  | 17823-6 | CD45 cells/100 cells in Body fluid | 50572 | 
51184 | CD5 | BLOOD | HEMATOLOGY |  | 8132-3 | CD5 cells/100 cells in Blood | 50360 | 
51326 | CD5 | BONE MARROW | HEMATOLOGY |  | 35640-2 | CD5 cells/100 cells in Bone marrow | 50493 | 
51412 | CD5 | OTHER BODY FLUID | HEMATOLOGY |  | 57423-6 | CD5 cells/100 cells in Body fluid | 50573 | 
51185 | CD5 % | BLOOD | HEMATOLOGY |  |  |  |  | 
51186 | CD5 ABSOLUTE COUNT | BLOOD | HEMATOLOGY |  |  |  |  | look for CD5 [#/volume] LOINC
51187 | CD55 | BLOOD | HEMATOLOGY |  | 17175-1 | CD55 cells/100 cells in Blood | 50361 | 
51327 | CD55 | BONE MARROW | HEMATOLOGY |  | 51344-0 | CD55 cells/100 cells in Bone marrow | 50494 | 
51535 | CD55 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50727 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51188 | CD56 | BLOOD | HEMATOLOGY |  | 8133-1 | CD56 cells/100 cells in Blood | 50362 | 
51328 | CD56 | BONE MARROW | HEMATOLOGY |  |  |  | 50495 | 
51413 | CD56 | OTHER BODY FLUID | HEMATOLOGY |  | 57424-4 | CD56 cells/100 cells in Body fluid | 50574 | 
51189 | CD57 | BLOOD | HEMATOLOGY |  |  |  | 50708 | 
51329 | CD57 | BONE MARROW | HEMATOLOGY |  |  |  | 50720 | 
51414 | CD57 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50728 | 
51190 | CD59 | BLOOD | HEMATOLOGY |  | 17177-7 | CD59 cells/100 cells in Blood | 50363 | 
51330 | CD59 | BONE MARROW | HEMATOLOGY |  | 51358-0 | CD59 cells/100 cells in Bone marrow | 50496 | 
51536 | CD59 | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50729 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51191 | CD64 | BLOOD | HEMATOLOGY |  | 17183-5 | CD64 cells/100 cells in Blood | 50364 | 
51331 | CD64 | BONE MARROW | HEMATOLOGY |  | 51365-5 | CD64 cells/100 cells in Bone marrow | 50497 | 
51415 | CD64 | OTHER BODY FLUID | HEMATOLOGY |  | 51366-3 | CD64 cells/100 cells in Body fluid | 50575 | 
51192 | CD7 | BLOOD | HEMATOLOGY |  | 8135-6 | CD7 cells/100 cells in Blood | 50365 | 
51332 | CD7 | BONE MARROW | HEMATOLOGY |  | 35641-0 | CD7 cells/100 cells in Bone marrow | 50498 | 
51416 | CD7 | OTHER BODY FLUID | HEMATOLOGY |  | 57425-1 | CD7 cells/100 cells in Body fluid | 50576 | 
51193 | CD71 | BLOOD | HEMATOLOGY |  | 8136-4 | CD71 cells/100 cells in Blood | 50366 | 
51333 | CD71 | BONE MARROW | HEMATOLOGY |  |  |  | 50499 | 
51417 | CD71 | OTHER BODY FLUID | HEMATOLOGY |  | 57426-9 | CD71 cells/100 cells in Body fluid | 50577 | 
51334 | CD8 | BONE MARROW | HEMATOLOGY |  | 51372-1 | CD8+HLA-DR+ cells/100 cells in Bone marrow | 50500 | 
51418 | CD8 | OTHER BODY FLUID | HEMATOLOGY |  | 17824-4 | CD8 cells/100 cells in Body fluid | 50578 | 
51194 | "CD8 CELLS, PERCENT" | BLOOD | HEMATOLOGY | 8137-2 | 8137-2 | CD8 cells [#/volume] in Blood | 50319 | 
51471 | CELLULAR CAST | URINE | HEMATOLOGY |  |  |  | 50632 | 
50901 | CENTROMERE | BLOOD | CHEMISTRY |  | 16570-4 | Centromere Ab [Presence] in Serum by Immunofluorescence | 50088 | 
50902 | CHLORIDE | BLOOD | CHEMISTRY | 2075-0 | 2069-3 | Chloride [Moles/volume] in Blood | 50083 | 
50839 | "CHLORIDE, ASCITES" | ASCITES | CHEMISTRY |  | 33366-6 | Chloride [Moles/volume] in Peritoneal fluid | 50039 | 
51030 | "CHLORIDE, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 2072-7 | Chloride [Moles/volume] in Body fluid | 50214 | 
51013 | "CHLORIDE, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  |  |  |  | 
51050 | "CHLORIDE, PLEURAL" | PLEURAL | CHEMISTRY |  | 53627-6 | Chloride [Moles/volume] in Pleural fluid | 50236 | 
51062 | "CHLORIDE, STOOL" | STOOL | CHEMISTRY |  | 15158-9 | Chloride [Moles/volume] in Stool | 50248 | 
51078 | "CHLORIDE, URINE" | URINE | CHEMISTRY | 2078-4 | 2078-4 | Chloride [Moles/volume] in Urine | 50263 | 
50806 | "CHLORIDE, WHOLE BLOOD" | BLOOD | BLOOD GAS |  | 2069-3 | Chloride [Moles/volume] in Blood | 50004 | 
51472 | CHOLESTEROL CRYSTALS | URINE | HEMATOLOGY | 5777-8 |  |  | 50732 | 
50903 | CHOLESTEROL RATIO (TOTAL/HDL) | BLOOD | CHEMISTRY | 9322-9 | 32309-7 | Cholesterol.total/Cholesterol.in HDL [Molar ratio] in Serum or Plasma | 50084 | 
50840 | "CHOLESTEROL, ASCITES" | ASCITES | CHEMISTRY |  | 14441-0 | Cholesterol [Mass/volume] in Peritoneal fluid | 50040 | 
51031 | "CHOLESTEROL, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 12183-0 | Cholesterol [Mass/volume] in Body fluid | 50215 | 
50904 | "CHOLESTEROL, HDL" | BLOOD | CHEMISTRY | 2086-7 | 2085-9 | Cholesterol.in HDL [Mass/volume] in Serum or Plasma | 50122 | 
50905 | "CHOLESTEROL, LDL, CALCULATED" | BLOOD | CHEMISTRY | 2090-9 | 13457-7 | Cholesterol.in LDL [Mass/volume] in Serum or Plasma by calculation | 50135 | 
50906 | "CHOLESTEROL, LDL, MEASURED" | BLOOD | CHEMISTRY |  | 18262-6 | Cholesterol.in LDL [Mass/volume] in Serum or Plasma by Direct assay | 50136 | 
51051 | "CHOLESTEROL, PLEURAL" | PLEURAL | CHEMISTRY |  | 9618-0 | Cholesterol [Mass/volume] in Pleural fluid | 50237 | 
50907 | "CHOLESTEROL, TOTAL" | BLOOD | CHEMISTRY | 2093-3 | 2093-3 | Cholesterol [Mass/volume] in Serum or Plasma | 50085 | 
50908 | CK-MB INDEX | BLOOD | CHEMISTRY |  | 20569-0 | Creatine kinase.MB/Creatine kinase.total in Serum or Plasma | 50141 | 
51079 | "COCAINE, URINE" | URINE | CHEMISTRY |  | 3397-7 | Cocaine [Presence] in Urine | 50292 | 
51195 | COLLAGEN | BLOOD | HEMATOLOGY |  |  |  | 50369 | 
50807 | COMMENTS | BLOOD | BLOOD GAS |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
50909 | CORTISOL | BLOOD | CHEMISTRY | 2143-6 | 2143-6 | Cortisol [Mass/volume] in Serum or Plasma | 50089 | 
50910 | CREATINE KINASE (CK) | BLOOD | CHEMISTRY | 2157-6 | 2157-6 | Creatine kinase [Enzymatic activity/volume] in Serum or Plasma | 50086 | 
50911 | "CREATINE KINASE, MB ISOENZYME" | BLOOD | CHEMISTRY | 6773-6 | 49551-5 | Creatine kinase.MB [Mass/volume] in Blood | 50087 | 
50912 | CREATININE | BLOOD | CHEMISTRY | 2160-0 | 2160-0 | Creatinine [Mass/volume] in Serum or Plasma | 50090 | 
51080 | CREATININE CLEARANCE | URINE | CHEMISTRY |  | 33558-8 | Creatinine renal clearance in unspecified time | 50265 | 
50841 | "CREATININE, ASCITES" | ASCITES | CHEMISTRY |  | 12191-3 | Creatinine [Mass/volume] in Peritoneal fluid | 50042 | 
51032 | "CREATININE, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 12190-5 | Creatinine [Mass/volume] in Body fluid | 50216 | 
51021 | "CREATININE, JOINT FLUID" | JOINT FLUID | CHEMISTRY |  | 14401-4 | Creatinine [Mass/volume] in Synovial fluid | 50207 | 
51052 | "CREATININE, PLEURAL" | PLEURAL | CHEMISTRY |  | 14399-0 | Creatinine [Mass/volume] in Pleural fluid | 50239 | 
51081 | "CREATININE, SERUM" | URINE | CHEMISTRY |  |  |  | 50257 | 
51082 | "CREATININE, URINE" | URINE | CHEMISTRY | 2161-8 | 2161-8 | Creatinine [Mass/volume] in Urine | 50264 | 
50913 | CRYOGLOBULIN | BLOOD | CHEMISTRY |  | 5117-7 | Cryoglobulin [Presence] in Serum | 50092 | 
50914 | CYCLOSPORIN | BLOOD | CHEMISTRY | 3521-2 | 3520-4 | Cyclosporine [Mass/volume] in Blood | 50093 | 
51473 | CYSTEINE CRYSTALS | URINE | HEMATOLOGY | 5782-8 | 34277-4 | Cysteine [Moles/volume] in Urine | 50635 | 
50915 | D-DIMER | BLOOD | CHEMISTRY |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
51196 | D-DIMER | BLOOD | HEMATOLOGY |  | 48065-7 | Fibrin D-dimer FEU [Mass/volume] in Platelet poor plasma | 50370 | 
50916 | DHEA-SULFATE | BLOOD | CHEMISTRY | 2191-5 | 2191-5 | Dehydroepiandrosterone sulfate [Mass/volume] in Serum or Plasma | 50094 | 
50917 | DIGOXIN | BLOOD | CHEMISTRY | 10535-3 | 10535-3 | Digoxin [Mass/volume] in Serum or Plasma | 50095 | 
50918 | DOUBLE STRANDED DNA | BLOOD | CHEMISTRY |  | 5130-0 | DNA double strand Ab [Units/volume] in Serum | 50192 | 
50919 | EDTA HOLD | BLOOD | CHEMISTRY |  |  |  | 50097 | 
51197 | ELLIPTOCYTES | BLOOD | HEMATOLOGY | 6681-1 | 11274-8 | Elliptocytes [Presence] in Blood by Light microscopy | 50371 | 
51198 | ENVELOPE CELLS | BLOOD | HEMATOLOGY | 681-7 |  |  | 50372 | 
51199 | EOSINOPHIL COUNT | BLOOD | HEMATOLOGY |  | 26449-9 | Eosinophils [#/volume] in Blood | 50374 | 
51114 | EOSINOPHILS | ASCITES | HEMATOLOGY |  | 30380-0 | Eosinophils/100 leukocytes in Peritoneal fluid | 50301 | 
51200 | EOSINOPHILS | BLOOD | HEMATOLOGY | 711-2 | 26450-7 | Eosinophils/100 leukocytes in Blood | 50373 | 
51347 | EOSINOPHILS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26451-5 | Eosinophils/100 leukocytes in Cerebral spinal fluid | 50513 | 
51368 | EOSINOPHILS | JOINT FLUID | HEMATOLOGY |  | 17834-3 | Eosinophils/100 leukocytes in Synovial fluid | 50534 | 
51419 | EOSINOPHILS | OTHER BODY FLUID | HEMATOLOGY |  | 26452-3 | Eosinophils/100 leukocytes in Body fluid | 50579 | 
51444 | EOSINOPHILS | PLEURAL | HEMATOLOGY |  | 30379-2 | Eosinophils/100 leukocytes in Pleural fluid | 50603 | 
51474 | EOSINOPHILS | URINE | HEMATOLOGY |  | 25156-1 | Eosinophils [Presence] in Urine sediment by Light microscopy | 50636 | 
51201 | EPINEPHERINE | BLOOD | HEMATOLOGY |  |  |  | 50375 | 
51475 | EPITHELIAL CASTS | URINE | HEMATOLOGY |  |  |  | 50733 | 
51476 | EPITHELIAL CELLS | URINE | HEMATOLOGY | 5787-7 | 5787-7 | Epithelial cells [#/area] in Urine sediment by Microscopy high power field | 50637 | 
50920 | ESTIMATED GFR (MDRD EQUATION) | BLOOD | CHEMISTRY |  | 33914-3 | Glomerular filtration rate/1.73 sq M.predicted by Creatinine-based formula (MDRD) | 50193 | 
50921 | ESTRADIOL | BLOOD | CHEMISTRY |  | 2243-4 | Estradiol [Mass/volume] in Serum or Plasma | 50098 | 
50922 | ETHANOL | BLOOD | CHEMISTRY | 5642-4 | 5640-8 | Ethanol [Mass/volume] in Blood | 50099 | 
51083 | "ETHANOL, URINE" | URINE | CHEMISTRY |  | 5644-0 | Ethanol [Presence] in Urine | 50293 | 
51202 | FACTOR II | BLOOD | HEMATOLOGY | 3289-6 | 3289-6 | Prothrombin activity actual/normal in Platelet poor plasma by Coagulation assay | 50397 | this loinc code seems completely wrong
51203 | FACTOR IX | BLOOD | HEMATOLOGY | 3188-0 | 3187-2 | Coagulation factor IX activity actual/normal in Platelet poor plasma by Coagulation assay | 50401 | 
51204 | FACTOR V | BLOOD | HEMATOLOGY |  | 3193-0 | Coagulation factor V activity actual/normal in Platelet poor plasma by Coagulation assay | 50461 | 
51205 | FACTOR VII | BLOOD | HEMATOLOGY |  | 3198-9 | Coagulation factor VII activity actual/normal in Platelet poor plasma by Coagulation assay | 50462 | 
51206 | FACTOR VIII | BLOOD | HEMATOLOGY |  | 3209-4 | Coagulation factor VIII activity actual/normal in Platelet poor plasma by Coagulation assay | 50463 | 
51207 | FACTOR VIII INHIBITOR | BLOOD | HEMATOLOGY |  | 3204-5 | Coagulation factor VIII inhibitor [Units/volume] in Platelet poor plasma by Coagulation assay | 50464 | 
51208 | FACTOR X | BLOOD | HEMATOLOGY | 3218-5 |  |  | 50469 | 
51209 | FACTOR XI | BLOOD | HEMATOLOGY | 3226-8 | 3226-8 | Coagulation factor XI activity actual/normal in Platelet poor plasma by Coagulation assay | 50470 | 
51210 | FACTOR XII | BLOOD | HEMATOLOGY |  | 3232-6 | Coagulation factor XII activity actual/normal in Platelet poor plasma by Coagulation assay | 50471 | 
51211 | FACTOR XIII | BLOOD | HEMATOLOGY | 3240-9 | 27815-0 | Coagulation factor XIII activity actual/normal in Platelet poor plasma by Chromogenic method | 50472 | 
51524 | FATTY | URINE | HEMATOLOGY |  | 5789-3 | Fatty casts [#/area] in Urine sediment by Microscopy low power field | 50639 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50923 | FAX | BLOOD | CHEMISTRY |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
50924 | FERRITIN | BLOOD | CHEMISTRY | 2276-4 | 2276-4 | Ferritin [Mass/volume] in Serum or Plasma | 50101 | 
51212 | FETAL HEMOGLOBIN | BLOOD | HEMATOLOGY |  | 4576-5 | Hemoglobin F/Hemoglobin.total in Blood | 50377 | 
51033 | FETALFN | OTHER BODY FLUID | CHEMISTRY |  |  |  | 50701 | 
51213 | FIBRIN DEGRADATION PRODUCTS | BLOOD | HEMATOLOGY |  | 30226-5 | Fibrin+Fibrinogen fragments [Mass/volume] in Platelet poor plasma | 50376 | 
51214 | "FIBRINOGEN, FUNCTIONAL" | BLOOD | HEMATOLOGY |  | 3255-7 | Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay | 50378 | 
50829 | FLUID TYPE | OTHER BODY FLUID | BLOOD GAS |  | 14725-6 | [Type] of Body fluid | 50031 | 
51215 | FMC-7 | BLOOD | HEMATOLOGY |  | 17220-5 | FMC7 cells/100 cells in Blood | 50379 | 
51335 | FMC-7 | BONE MARROW | HEMATOLOGY |  |  |  | 50501 | 
51420 | FMC-7 | OTHER BODY FLUID | HEMATOLOGY |  | 57428-5 | FMC7 cells/100 cells in Body fluid | 50580 | 
50925 | FOLATE | BLOOD | CHEMISTRY | 2284-8 | 2284-8 | Folate [Mass/volume] in Serum or Plasma | 50103 | 
50926 | FOLLICLE STIMULATING HORMONE | BLOOD | CHEMISTRY | 2286-3 | 15067-2 | Follitropin [Units/volume] in Serum or Plasma | 50106 | 
51216 | FRAGMENTED CELLS | BLOOD | HEMATOLOGY | 10373-9 | 40746-0 | Fragments [Presence] in Blood by Automated count | 50380 | 
50808 | FREE CALCIUM | BLOOD | BLOOD GAS |  | 1994-3 | Calcium.ionized [Moles/volume] in Blood | 50030 | 
51477 | FREE FAT | URINE | HEMATOLOGY |  | 53359-6 | Fat [#/area] in Urine by Computer assisted method | 50640 | 
51526 | FRUCAMN+ | BLOOD | CHEMISTRY |  |  |  | 50683 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50927 | GAMMA GLUTAMYLTRANSFERASE | BLOOD | CHEMISTRY | 2324-2 | 2324-2 | Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma | 50109 | 
50928 | GASTRIN | BLOOD | CHEMISTRY | 2333-3 | 2333-3 | Gastrin [Mass/volume] in Serum or Plasma | 50107 | 
50929 | GENTAMICIN | BLOOD | CHEMISTRY | 3664-0 | 35668-3 | Gentamicin [Mass/volume] in Serum or Plasma | 50108 | 
50930 | GLOBULIN | BLOOD | CHEMISTRY | 2336-6 | 2336-6 | Globulin [Mass/volume] in Serum | 50111 | 
50809 | GLUCOSE | BLOOD | BLOOD GAS |  | 2339-0 | Glucose [Mass/volume] in Blood | 50006 | 
50931 | GLUCOSE | BLOOD | CHEMISTRY | 6777-7 | 2345-7 | Glucose [Mass/volume] in Serum or Plasma | 50112 | 
51478 | GLUCOSE | URINE | HEMATOLOGY | 5792-7 | 2350-7 | Glucose [Mass/volume] in Urine | 50641 | 
50842 | "GLUCOSE, ASCITES" | ASCITES | CHEMISTRY |  | 2347-3 | Glucose [Mass/volume] in Peritoneal fluid | 50043 | 
51034 | "GLUCOSE, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 2344-0 | Glucose [Mass/volume] in Body fluid | 50217 | 
51014 | "GLUCOSE, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  | 2342-4 | Glucose [Mass/volume] in Cerebral spinal fluid | 50201 | 
51022 | "GLUCOSE, JOINT FLUID" | JOINT FLUID | CHEMISTRY |  | 2348-1 | Glucose [Mass/volume] in Synovial fluid | 50208 | 
51053 | "GLUCOSE, PLEURAL" | PLEURAL | CHEMISTRY |  | 2346-5 | Glucose [Mass/volume] in Pleural fluid | 50240 | 
51084 | "GLUCOSE, URINE" | URINE | CHEMISTRY |  | 2350-7 | Glucose [Mass/volume] in Urine | 50266 | 
51217 | GLYCO A | BLOOD | HEMATOLOGY |  | 17221-3 | CD235a cells/100 cells in Blood | 50381 | 
51336 | GLYCO A | BONE MARROW | HEMATOLOGY |  | 33208-0 | CD235a cells/100 cells in Bone marrow | 50502 | 
51421 | GLYCO A | OTHER BODY FLUID | HEMATOLOGY |  | 57430-1 | CD235a cells/100 cells in Body fluid | 50581 | 
51523 | GR HOLD | URINE | CHEMISTRY |  |  |  | 50267 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51479 | GRANULAR CASTS | URINE | HEMATOLOGY | 5793-5 | 5793-5 | Granular casts [#/area] in Urine sediment by Microscopy low power field | 50642 | 
51218 | GRANULOCYTE COUNT | BLOOD | HEMATOLOGY |  | 30394-1 | Granulocytes [#/volume] in Blood | 50382 | 
50932 | GRAY TOP HOLD (PLASMA) | BLOOD | CHEMISTRY |  |  |  | 50114 | 
50933 | GREEN TOP HOLD (PLASMA) | BLOOD | CHEMISTRY |  |  |  | 50113 | 
50934 | H | BLOOD | CHEMISTRY |  |  |  | 50684 | 
51219 | H/O SMEAR | BLOOD | HEMATOLOGY |  | 38924-7 | TBX5 gene mutations found [Identifier] in Blood or Tissue by Molecular genetics method Nominal | 50393 | this loinc code looks super suspicious
50935 | HAPTOGLOBIN | BLOOD | CHEMISTRY | 4542-7 | 4542-7 | Haptoglobin [Mass/volume] in Serum or Plasma | 50115 | 
50936 | "HCG, MATERNAL SCREEN" | BLOOD | CHEMISTRY |  |  |  | 50689 | 
51085 | "HCG, URINE, QUALITATIVE" | URINE | CHEMISTRY |  | 2106-3 | Choriogonadotropin [Presence] in Urine | 50281 | 
51220 | HEINZ BODY PREP | BLOOD | HEMATOLOGY |  | 48068-1 | Heinz bodies [Presence] in Blood | 50384 | 
51221 | HEMATOCRIT | BLOOD | HEMATOLOGY | 4544-3 | 20570-8 | Hematocrit [Volume Fraction] of Blood | 50383 | 
51480 | HEMATOCRIT | URINE | HEMATOLOGY |  | 17809-5 | Hematocrit [Volume Fraction] of Urine | 50643 | 
51115 | "HEMATOCRIT, ASCITES" | ASCITES | HEMATOLOGY |  |  |  | 50302 | 
50810 | "HEMATOCRIT, CALCULATED" | BLOOD | BLOOD GAS |  | 20570-8 | Hematocrit [Volume Fraction] of Blood | 50029 | 
51348 | "HEMATOCRIT, CSF" | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30398-2 | Hematocrit [Volume Fraction] of Cerebral spinal fluid | 50514 | 
51369 | "HEMATOCRIT, JOINT FLUID" | JOINT FLUID | HEMATOLOGY |  |  |  | 50535 | 
51422 | "HEMATOCRIT, OTHER FLUID" | OTHER BODY FLUID | HEMATOLOGY |  | 11153-4 | Hematocrit [Volume Fraction] of Body fluid | 50582 | 
51445 | "HEMATOCRIT, PLEURAL" | PLEURAL | HEMATOLOGY |  |  |  | 50604 | 
50811 | HEMOGLOBIN | BLOOD | BLOOD GAS |  | 718-7 | Hemoglobin [Mass/volume] in Blood | 50007 | 
51222 | HEMOGLOBIN | BLOOD | HEMATOLOGY | 718-7 | 718-7 | Hemoglobin [Mass/volume] in Blood | 50386 | 
51223 | HEMOGLOBIN A2 | BLOOD | HEMATOLOGY | 4552-6 | 4551-8 | Hemoglobin A2/Hemoglobin.total in Blood | 50388 | 
51224 | HEMOGLOBIN C | BLOOD | HEMATOLOGY | 4561-7 | 4563-3 | Hemoglobin C/Hemoglobin.total in Blood | 50389 | 
51225 | HEMOGLOBIN F | BLOOD | HEMATOLOGY | 9749-3 | 4576-5 | Hemoglobin F/Hemoglobin.total in Blood | 50390 | 
51226 | HEMOGLOBLIN A | BLOOD | HEMATOLOGY | 10346-5 | 4546-8 | Hemoglobin A/Hemoglobin.total in Blood | 50387 | 
51227 | HEMOGLOBLIN S | BLOOD | HEMATOLOGY | 4622-7 | 4625-0 | Hemoglobin S/Hemoglobin.total in Blood | 50391 | 
51481 | HEMOSIDERIN | URINE | HEMATOLOGY |  | 4644-1 | Hemosiderin [Presence] in Urine | 50644 | 
51228 | HEPARIN | BLOOD | HEMATOLOGY |  | 13055-9 | Heparin [Units/volume] in Platelet poor plasma | 50385 | 
51229 | "HEPARIN, LMW" | BLOOD | HEMATOLOGY |  | 32684-3 | LMW Heparin [Units/volume] in Platelet poor plasma | 50405 | 
50937 | HEPATITIS A VIRUS ANTIBODY | BLOOD | CHEMISTRY | 5183-9 | 20575-7 | Hepatitis A virus Ab [Presence] in Serum | 50116 | 
50938 | HEPATITIS A VIRUS IGM ANTIBODY | BLOOD | CHEMISTRY |  | 22314-9 | Hepatitis A virus IgM Ab [Presence] in Serum | 50132 | 
50939 | "HEPATITIS B CORE ANTIBODY, IGM" | BLOOD | CHEMISTRY |  | 31204-1 | Hepatitis B virus core IgM Ab [Presence] in Serum | 50133 | 
50940 | HEPATITIS B SURFACE ANTIBODY | BLOOD | CHEMISTRY | 5193-8 | 32019-2 | Hepatitis B virus surface Ab [Titer] in Serum | 50118 | 
50941 | HEPATITIS B SURFACE ANTIGEN | BLOOD | CHEMISTRY | 5196-1 | 5195-3 | Hepatitis B virus surface Ag [Presence] in Serum | 50119 | 
50942 | HEPATITIS B VIRUS CORE ANTIBODY | BLOOD | CHEMISTRY | 5187-0 | 16933-4 | Hepatitis B virus core Ab [Presence] in Serum | 50117 | 
50943 | HEPATITIS C VIRUS ANTIBODY | BLOOD | CHEMISTRY | 16128-1 | 16128-1 | Hepatitis C virus Ab [Presence] in Serum | 50121 | 
50944 | HIV ANTIBODY | BLOOD | CHEMISTRY | 5220-9 |  |  | 50123 | 
51230 | HLA-DR | BLOOD | HEMATOLOGY |  | 32621-5 | HLA-DR [Presence] | 50392 | 
51337 | HLA-DR | BONE MARROW | HEMATOLOGY |  | 51380-4 | HLA-DR+ cells/100 cells in Bone marrow | 50503 | 
51423 | HLA-DR | OTHER BODY FLUID | HEMATOLOGY |  | 51381-2 | HLA-DR+ cells/100 cells in Body fluid | 50583 | 
50945 | HOMOCYSTEINE | BLOOD | CHEMISTRY | 13965-9 | 20646-6 | Homocystine [Moles/volume] in Serum or Plasma | 50125 | 
51231 | HOWELL-JOLLY BODIES | BLOOD | HEMATOLOGY | 7793-3 | 7793-3 | Howell-Jolly bodies [Presence] in Blood by Light microscopy | 50394 | 
50946 | HUMAN CHORIONIC GONADOTROPIN | BLOOD | CHEMISTRY | 2119-6 | 19080-1 | Choriogonadotropin [Units/volume] in Serum or Plasma | 50120 | 
51482 | HYALINE CASTS | URINE | HEMATOLOGY | 5796-8 | 5796-8 | Hyaline casts [#/area] in Urine sediment by Microscopy low power field | 50645 | 
51232 | HYPERSEGMENTED NEUTROPHILS | BLOOD | HEMATOLOGY | 766-6 | 30450-1 | Neutrophils.hypersegmented/100 leukocytes in Blood | 50395 | 
51349 | HYPERSEGMENTED NEUTROPHILS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26506-6 | Neutrophils.segmented/100 leukocytes in Cerebral spinal fluid | 50515 | 
51483 | HYPHENATED YEAST | URINE | HEMATOLOGY |  | 41865-7 | Yeast.hyphae [Presence] in Urine sediment by Light microscopy | 50646 | 
51233 | HYPOCHROMIA | BLOOD | HEMATOLOGY | 728-6 | 728-6 | Hypochromia [Presence] in Blood by Light microscopy | 50396 | 
50947 | I | BLOOD | CHEMISTRY |  |  |  | 50685 | 
50948 | IMMUNOFIXATION | BLOOD | CHEMISTRY |  | 49275-1 | Immunofixation [interpretation] for Serum or Plasma Narrative | 50126 | 
51086 | "IMMUNOFIXATION, URINE" | URINE | CHEMISTRY |  | 49276-9 | Immunofixation [interpretation] for Urine Narrative | 50269 | 
50949 | IMMUNOGLOBULIN A | BLOOD | CHEMISTRY | 2458-8 | 2458-8 | IgA [Mass/volume] in Serum | 50129 | 
50950 | IMMUNOGLOBULIN G | BLOOD | CHEMISTRY | 2465-3 | 2465-3 | IgG [Mass/volume] in Serum | 50130 | 
50951 | IMMUNOGLOBULIN M | BLOOD | CHEMISTRY | 2472-9 | 2472-9 | IgM [Mass/volume] in Serum | 50131 | 
51234 | IMMUNOPHENOTYPING | BLOOD | HEMATOLOGY |  |  |  | 50400 | 
51338 | IMMUNOPHENOTYPING | BONE MARROW | HEMATOLOGY |  |  |  | 50504 | 
51350 | IMMUNOPHENOTYPING | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  |  |  | 50721 | 
51424 | IMMUNOPHENOTYPING | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50584 | 
51235 | INHIBITOR SCREEN | BLOOD | HEMATOLOGY |  |  |  | 50398 | 
51236 | INPATIENT HEMATOLOGY/ONCOLOGY SMEAR | BLOOD | HEMATOLOGY |  |  |  | 50709 | 
51237 | INR(PT) | BLOOD | HEMATOLOGY | 5895-7 | 34714-6 | INR in Blood by Coagulation assay | 50399 | 
50812 | INTUBATED | BLOOD | BLOOD GAS |  |  |  | 50008 | 
50952 | IRON | BLOOD | CHEMISTRY | 2498-4 | 2498-4 | Iron [Mass/volume] in Serum or Plasma | 50128 | 
50953 | "IRON BINDING CAPACITY, TOTAL" | BLOOD | CHEMISTRY |  | 2500-7 | Iron binding capacity [Mass/volume] in Serum or Plasma | 50190 | 
51339 | IRON STAIN | BONE MARROW | HEMATOLOGY |  | 13513-7 | Iron.microscopic observation [Identifier] in Bone marrow by Potassium ferrocyanide stain | 50505 | 
51370 | "JOINT CRYSTALS, BIREFRINGENCE" | JOINT FLUID | HEMATOLOGY |  |  |  | 50532 | 
51371 | "JOINT CRYSTALS, COMMENT" | JOINT FLUID | HEMATOLOGY |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
51372 | "JOINT CRYSTALS, LOCATION" | JOINT FLUID | HEMATOLOGY |  |  |  | 50536 | 
51373 | "JOINT CRYSTALS, NUMBER" | JOINT FLUID | HEMATOLOGY |  |  |  | 50543 | 
51374 | "JOINT CRYSTALS, SHAPE" | JOINT FLUID | HEMATOLOGY |  |  |  | 50547 | 
51238 | KAPPA | BLOOD | HEMATOLOGY |  |  |  | 50402 | 
51340 | KAPPA | BONE MARROW | HEMATOLOGY |  |  |  | 50506 | 
51425 | KAPPA | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50585 | 
51484 | KETONE | URINE | HEMATOLOGY | 5797-6 | 49779-2 | Ketones [Mass/volume] in Urine | 50647 | 
50813 | LACTATE | BLOOD | BLOOD GAS |  | 32693-4 | Lactate [Moles/volume] in Blood | 50010 | 
50954 | LACTATE DEHYDROGENASE (LD) | BLOOD | CHEMISTRY | 2532-0 | 2532-0 | Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma | 50134 | 
50843 | "LACTATE DEHYDROGENASE, ASCITES" | ASCITES | CHEMISTRY |  | 2531-2 | Lactate dehydrogenase [Enzymatic activity/volume] in Peritoneal fluid | 50044 | 
51015 | "LACTATE DEHYDROGENASE, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  | 2528-8 | Lactate dehydrogenase [Enzymatic activity/volume] in Cerebral spinal fluid | 50202 | 
51054 | "LACTATE DEHYDROGENASE, PLEURAL" | PLEURAL | CHEMISTRY |  | 2530-4 | Lactate dehydrogenase [Enzymatic activity/volume] in Pleural fluid | 50241 | 
51239 | LAMBDA | BLOOD | HEMATOLOGY |  |  |  | 50403 | 
51341 | LAMBDA | BONE MARROW | HEMATOLOGY |  |  |  | 50507 | 
51426 | LAMBDA | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50586 | 
51240 | LARGE PLATELETS | BLOOD | HEMATOLOGY |  | 34167-7 | Platelets Large [Presence] in Blood by Automated count | 50406 | 
51035 | "LD, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 2529-6 | Lactate dehydrogenase [Enzymatic activity/volume] in Body fluid | 50218 | 
51023 | "LD, JOINT FLUID" | JOINT FLUID | CHEMISTRY |  | 2533-8 | Lactate dehydrogenase [Enzymatic activity/volume] in Synovial fluid | 50209 | 
51087 | LENGTH OF URINE COLLECTION | URINE | CHEMISTRY |  | 13362-9 | Collection duration of Urine | 50268 | 
51485 | LEUCINE CRYSTALS | URINE | HEMATOLOGY | 5798-4 |  |  | 50734 | 
51241 | LEUKOCYTE ALKALINE PHOSPHATASE | BLOOD | HEMATOLOGY | 4659-9 | 15112-6 | Leukocyte phosphatase [Units/volume] in Leukocytes | 50404 | 
51486 | LEUKOCYTES | URINE | HEMATOLOGY | 5799-2 | 33052-2 | Leukocytes [Presence] in Urine | 50648 | 
50955 | LIGHT GREEN TOP HOLD | BLOOD | CHEMISTRY |  |  |  | 50686 | 
50956 | LIPASE | BLOOD | CHEMISTRY |  | 3040-3 | Triacylglycerol lipase [Enzymatic activity/volume] in Serum or Plasma | 50138 | 
50844 | "LIPASE, ASCITES" | ASCITES | CHEMISTRY |  | 32722-1 | Triacylglycerol lipase [Enzymatic activity/volume] in Peritoneal fluid | 50045 | 
51036 | "LIPASE, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 15212-4 | Triacylglycerol lipase [Enzymatic activity/volume] in Body fluid | 50219 | 
51055 | "LIPASE, PLEURAL" | PLEURAL | CHEMISTRY |  |  |  | 50702 | 
50957 | LITHIUM | BLOOD | CHEMISTRY | 3719-2 | 14334-7 | Lithium [Moles/volume] in Serum or Plasma | 50139 | 
51242 | LUC | BLOOD | HEMATOLOGY |  |  |  | 50710 | 
51243 | LUPUS ANTICOAGULANT | BLOOD | HEMATOLOGY |  |  |  | 50407 | 
50958 | LUTEINIZING HORMONE | BLOOD | CHEMISTRY | 1599-0 | 10501-5 | Lutropin [Units/volume] in Serum or Plasma | 50137 | 
51116 | LYMPHOCYTES | ASCITES | HEMATOLOGY |  | 26482-0 | Lymphocytes/100 leukocytes in Peritoneal fluid | 50303 | 
51244 | LYMPHOCYTES | BLOOD | HEMATOLOGY | 731-0 | 26478-8 | Lymphocytes/100 leukocytes in Blood | 50408 | 
51375 | LYMPHOCYTES | JOINT FLUID | HEMATOLOGY |  | 26483-8 | Lymphocytes/100 leukocytes in Synovial fluid | 50537 | 
51427 | LYMPHOCYTES | OTHER BODY FLUID | HEMATOLOGY |  | 11031-2 | Lymphocytes/100 leukocytes in Body fluid | 50587 | 
51446 | LYMPHOCYTES | PLEURAL | HEMATOLOGY |  | 26481-2 | Lymphocytes/100 leukocytes in Pleural fluid | 50605 | 
51245 | "LYMPHOCYTES, PERCENT" | BLOOD | HEMATOLOGY |  | 26478-8 | Lymphocytes/100 leukocytes in Blood | 50315 | 
51351 | LYMPHS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26479-6 | Lymphocytes/100 leukocytes in Cerebral spinal fluid | 50516 | 
50959 | MACRO PROLACTIN | BLOOD | CHEMISTRY |  |  |  | 50691 | 
51246 | MACROCYTES | BLOOD | HEMATOLOGY | 738-5 | 30424-6 | Macrocytes [Presence] in Blood | 50409 | 
51247 | MACROOVALOCYTES | BLOOD | HEMATOLOGY | 10376-2 | 10376-2 | Oval macrocytes [Presence] in Blood by Light microscopy | 50410 | 
51117 | MACROPHAGE | ASCITES | HEMATOLOGY |  | 40517-5 | Macrophages/100 leukocytes in Peritoneal fluid by Manual count | 50304 | 
51352 | MACROPHAGE | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30426-1 | Macrophages/100 leukocytes in Cerebral spinal fluid | 50517 | 
51376 | MACROPHAGE | JOINT FLUID | HEMATOLOGY |  | 33376-5 | Macrophages/100 leukocytes in Synovial fluid | 50538 | 
51428 | MACROPHAGE | OTHER BODY FLUID | HEMATOLOGY |  | 12230-9 | Macrophages/100 leukocytes in Body fluid by Manual count | 50588 | 
51447 | MACROPHAGES | PLEURAL | HEMATOLOGY |  | 40520-9 | Macrophages/100 leukocytes in Pleural fluid by Manual count | 50606 | 
50960 | MAGNESIUM | BLOOD | CHEMISTRY | 2601-3 | 19123-9 | Magnesium [Mass/volume] in Serum or Plasma | 50140 | 
51037 | "MAGNESIUM, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 29365-4 | Magnesium [Mass/volume] in Body fluid | 50220 | 
51088 | "MAGNESIUM, URINE" | URINE | CHEMISTRY | 2598-1 | 19124-7 | Magnesium [Mass/volume] in Urine | 50270 | 
51089 | MARIJUANA | URINE | CHEMISTRY |  | 3427-2 | Cannabinoids [Presence] in Urine | 50294 | 
51248 | MCH | BLOOD | HEMATOLOGY | 785-6 | 28539-5 | Erythrocyte mean corpuscular hemoglobin [Entitic mass] | 50411 | 
51249 | MCHC | BLOOD | HEMATOLOGY | 786-4 | 28540-3 | Erythrocyte mean corpuscular hemoglobin concentration [Mass/volume] | 50412 | 
51250 | MCV | BLOOD | HEMATOLOGY | 787-2 | 30428-7 | Erythrocyte mean corpuscular volume [Entitic volume] | 50413 | 
51118 | MESOTHELIAL CELL | ASCITES | HEMATOLOGY |  | 30432-9 | Mesothelial cells/100 leukocytes in Peritoneal fluid | 50305 | 
51353 | MESOTHELIAL CELLS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30429-5 | Mesothelial cells/100 leukocytes in Cerebral spinal fluid | 50518 | 
51377 | MESOTHELIAL CELLS | JOINT FLUID | HEMATOLOGY |  | 33365-8 | Mesothelial cells/100 leukocytes in Synovial fluid | 50539 | 
51429 | MESOTHELIAL CELLS | OTHER BODY FLUID | HEMATOLOGY |  | 28544-5 | Mesothelial cells/100 leukocytes in Body fluid | 50589 | 
51448 | MESOTHELIAL CELLS | PLEURAL | HEMATOLOGY |  | 30431-1 | Mesothelial cells/100 leukocytes in Pleural fluid | 50607 | 
51119 | METAMYELOCYTES | ASCITES | HEMATOLOGY |  |  |  | 50306 | 
51251 | METAMYELOCYTES | BLOOD | HEMATOLOGY |  | 28541-1 | Metamyelocytes/100 leukocytes in Blood | 50414 | 
51354 | METAMYELOCYTES | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30366-9 | Metamyelocytes/100 leukocytes in Cerebral spinal fluid | 50519 | 
51378 | METAMYELOCYTES | JOINT FLUID | HEMATOLOGY |  |  |  | 50540 | 
51430 | METAMYELOCYTES | OTHER BODY FLUID | HEMATOLOGY |  | 17801-2 | Metamyelocytes/100 leukocytes in Body fluid | 50590 | 
51449 | METAMYELOCYTES | PLEURAL | HEMATOLOGY |  |  |  | 50608 | 
51090 | "METHADONE, URINE" | URINE | CHEMISTRY |  | 3773-9 | Methadone [Presence] in Urine | 50295 | 
50814 | METHEMOGLOBIN | BLOOD | BLOOD GAS |  | 2614-6 | Methemoglobin/Hemoglobin.total in Blood | 50011 | 
50961 | METHOTREXATE | BLOOD | CHEMISTRY |  |  |  | 50698 | 
51252 | MICROCYTES | BLOOD | HEMATOLOGY | 741-9 | 30434-5 | Microcytes [Presence] in Blood | 50415 | 
50845 | "MISCELLANEOUS, ASCITES" | ASCITES | CHEMISTRY |  |  |  | 50046 | 
51038 | "MISCELLANEOUS, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  |  |  | 50221 | 
51016 | "MISCELLANEOUS, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  |  |  | 50203 | 
51056 | "MISCELLANEOUS, PLEURAL" | PLEURAL | CHEMISTRY |  |  |  | 50242 | 
51253 | MONOCYTE COUNT | BLOOD | HEMATOLOGY |  | 26484-6 | Monocytes [#/volume] in Blood | 50416 | 
51120 | MONOCYTES | ASCITES | HEMATOLOGY |  | 26488-7 | Monocytes/100 leukocytes in Peritoneal fluid | 50307 | 
51254 | MONOCYTES | BLOOD | HEMATOLOGY | 742-7 | 26485-3 | Monocytes/100 leukocytes in Blood | 50417 | 
51355 | MONOCYTES | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26486-1 | Monocytes/100 leukocytes in Cerebral spinal fluid | 50520 | 
51379 | MONOCYTES | JOINT FLUID | HEMATOLOGY |  | 17835-0 | Monocytes/100 leukocytes in Synovial fluid | 50541 | 
51431 | MONOS | OTHER BODY FLUID | HEMATOLOGY |  | 10330-9 | Monocytes/100 leukocytes in Body fluid by Manual count | 50591 | 
51450 | MONOS | PLEURAL | HEMATOLOGY |  | 33362-5 | Monocytes/100 leukocytes in Pleural fluid | 50609 | 
51527 | MS-DIA | BLOOD | CHEMISTRY |  |  |  | 50688 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51121 | MYELOCYTES | ASCITES | HEMATOLOGY |  |  |  | 50308 | 
51255 | MYELOCYTES | BLOOD | HEMATOLOGY |  | 26498-6 | Myelocytes/100 leukocytes in Blood | 50418 | 
51356 | MYELOCYTES | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 30447-7 | Myelocytes/100 leukocytes in Cerebral spinal fluid | 50521 | 
51432 | MYELOCYTES | OTHER BODY FLUID | HEMATOLOGY |  | 17800-4 | Myelocytes/100 leukocytes in Body fluid | 50592 | 
51451 | MYELOCYTES | PLEURAL | HEMATOLOGY |  |  |  | 50610 | 
51534 | MYELOS | JOINT FLUID | HEMATOLOGY |  |  |  | 50723 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51091 | "MYOGLOBIN, URINE" | URINE | CHEMISTRY |  | 2640-1 | Myoglobin [Presence] in Urine | 50271 | 
50962 | N-ACETYLPROCAINAMIDE (NAPA) | BLOOD | CHEMISTRY | 3834-9 | 3834-9 | N-acetylprocainamide [Mass/volume] in Serum or Plasma | 50142 | 
51256 | NEUTROPHILS | BLOOD | HEMATOLOGY | 761-7 | 26505-8 | Neutrophils.segmented/100 leukocytes in Blood | 50419 | 
51487 | NITRITE | URINE | HEMATOLOGY | 5802-4 | 5802-4 | Nitrite [Presence] in Urine by Test strip | 50650 | 
51488 | NON-SQUAMOUS EPITHELIAL CELLS | URINE | HEMATOLOGY |  | 41284-1 | Epithelial cells.non-squamous [#/area] in Urine sediment by Microscopy high power field | 50651 | 
51489 | NONSQUAMOUS EPITHELIAL CELL | URINE | HEMATOLOGY |  | 41284-1 | Epithelial cells.non-squamous [#/area] in Urine sediment by Microscopy high power field | 50652 | 
51357 | NRBC | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 48778-5 | Nucleated Erythrocytes/100 cells in Cerebral spinal fluid | 50522 | 
51380 | NRBC | JOINT FLUID | HEMATOLOGY |  | 48040-0 | Nucleated Erythrocytes/100 leukocytes [Ratio] in Synovial fluid by Manual count | 50542 | 
51433 | NRBC | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50593 | 
51452 | NRBC | PLEURAL | HEMATOLOGY |  |  |  | 50611 | 
50963 | NTPROBNP | BLOOD | CHEMISTRY |  | 33762-6 | Natriuretic peptide.B prohormone [Mass/volume] in Serum or Plasma | 50195 | 
51122 | NUCLEATED RBC | ASCITES | HEMATOLOGY |  |  |  | 50309 | 
51257 | NUCLEATED RED CELLS | BLOOD | HEMATOLOGY | 772-4 | 26461-4 | Nucleated Erythrocytes/100 erythrocytes in Blood | 50420 | 
50815 | O2 FLOW | BLOOD | BLOOD GAS |  | 3151-8 | Inhaled oxygen flow rate | 50014 | 
51092 | "OPIATE SCREEN, URINE" | URINE | CHEMISTRY |  | 3879-4 | Opiates [Presence] in Urine | 50296 | 
50846 | "OSMOLALITY, ASCITES" | ASCITES | CHEMISTRY |  | 2691-4 | Osmolality of Peritoneal fluid | 50047 | 
51039 | "OSMOLALITY, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 15200-9 | Osmolality of Body fluid | 50222 | 
50964 | "OSMOLALITY, MEASURED" | BLOOD | CHEMISTRY |  | 2692-2 | Osmolality of Serum or Plasma | 50144 | 
51063 | "OSMOLALITY, STOOL" | STOOL | CHEMISTRY |  | 2693-0 | Osmolality of Stool | 50250 | 
51093 | "OSMOLALITY, URINE" | URINE | CHEMISTRY |  | 2695-5 | Osmolality of Urine | 50272 | 
51258 | OSMOTIC FRAGILITY | BLOOD | HEMATOLOGY |  | 34964-7 | Osmotic fragility [interpretation] of Red Blood Cells | 50421 | 
51123 | OTHER | ASCITES | HEMATOLOGY |  |  |  | 50310 | 
51358 | OTHER | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  |  |  | 50523 | 
51381 | OTHER | JOINT FLUID | HEMATOLOGY |  |  |  | 50544 | 
51453 | OTHER | PLEURAL | HEMATOLOGY |  |  |  | 50612 | 
51434 | OTHER CELL | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50594 | 
51259 | OTHER CELLS | BLOOD | HEMATOLOGY | 729-4 |  |  | 50422 | 
51490 | OVAL FAT BODY | URINE | HEMATOLOGY |  |  |  | 50735 | 
51260 | OVALOCYTES | BLOOD | HEMATOLOGY | 774-0 | 774-0 | Ovalocytes [Presence] in Blood by Light microscopy | 50423 | 
50816 | OXYGEN | BLOOD | BLOOD GAS |  | 19994-3 | Oxygen/Inspired gas setting [Volume Fraction] Ventilator | 50013 | 
50817 | OXYGEN SATURATION | BLOOD | BLOOD GAS |  | 20564-1 | Oxygen saturation in Blood | 50015 | 
51261 | PAPPENHEIMER BODIES | BLOOD | HEMATOLOGY | 7795-8 | 7795-8 | Pappenheimer bodies [Presence] in Blood by Light microscopy | 50424 | 
50965 | PARATHYROID HORMONE | BLOOD | CHEMISTRY | 2731-8 | 2731-8 | Parathyrin.intact [Mass/volume] in Serum or Plasma | 50154 | 
50818 | PCO2 | BLOOD | BLOOD GAS |  | 11557-6 | Carbon dioxide [Partial pressure] in Blood | 50016 | 
50830 | "PCO2, BODY FLUID" | OTHER BODY FLUID | BLOOD GAS |  | 2023-0 | Carbon dioxide [Partial pressure] in Body fluid | 50034 | 
50819 | PEEP | BLOOD | BLOOD GAS |  | 20077-4 | Positive end expiratory pressure setting Ventilator | 50017 | 
51262 | PENCIL CELLS | BLOOD | HEMATOLOGY | 10377-0 | 10377-0 | Pencil cells [Presence] in Blood by Light microscopy | 50426 | 
51017 | "PEP, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  | 24352-7 | Protein electrophoresis panel in Cerebral spinal fluid | 50200 | 
51522 | PG | OTHER BODY FLUID | CHEMISTRY |  | 48785-0 | Prostaglandin D2 [Mass/volume] in Body fluid | 50223 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50820 | PH | BLOOD | BLOOD GAS |  | 11558-4 | pH of Blood | 50018 | 
50831 | PH | OTHER BODY FLUID | BLOOD GAS |  | 2748-2 | pH of Body fluid | 50035 | 
51094 | PH | URINE | CHEMISTRY |  | 2756-5 | pH of Urine | 50297 | 
51491 | PH | URINE | HEMATOLOGY | 5803-2 | 2756-5 | pH of Urine | 50653 | 
50966 | PHENOBARBITAL | BLOOD | CHEMISTRY | 3947-9 | 3948-7 | Phenobarbital [Mass/volume] in Serum or Plasma | 50146 | 
50967 | PHENYTOIN | BLOOD | CHEMISTRY | 3967-7 | 3968-5 | Phenytoin [Mass/volume] in Serum or Plasma | 50147 | 
50968 | "PHENYTOIN, FREE" | BLOOD | CHEMISTRY | 3969-3 | 3969-3 | Phenytoin Free [Mass/volume] in Serum or Plasma | 50194 | 
50969 | "PHENYTOIN, PERCENT FREE" | BLOOD | CHEMISTRY |  | 10548-6 | Phenytoin Free/Phenytoin.total in Serum or Plasma | 50055 | 
50970 | PHOSPHATE | BLOOD | CHEMISTRY | 2777-1 | 2777-1 | Phosphate [Mass/volume] in Serum or Plasma | 50148 | 
51040 | "PHOSPHATE, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 12242-4 | Phosphate [Mass/volume] in Body fluid | 50224 | 
51095 | "PHOSPHATE, URINE" | URINE | CHEMISTRY | 2778-9 | 2778-9 | Phosphate [Mass/volume] in Urine | 50273 | 
51124 | PLASMA | ASCITES | HEMATOLOGY |  | 40518-3 | Plasma cells/100 leukocytes in Peritoneal fluid by Manual count | 50311 | 
51359 | PLASMA | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 47413-0 | Plasma cells/100 leukocytes in Cerebral spinal fluid | 50524 | 
51435 | PLASMA | OTHER BODY FLUID | HEMATOLOGY |  | 17803-8 | Plasma cells/100 leukocytes in Body fluid | 50595 | 
51263 | PLASMA CELLS | BLOOD | HEMATOLOGY |  | 13047-6 | Plasma cells/100 leukocytes in Blood | 50427 | 
51454 | PLASMA CELLS | PLEURAL | HEMATOLOGY |  | 40522-5 | Plasma cells/100 leukocytes in Pleural fluid by Manual count | 50613 | 
51532 | PLASMGN | BLOOD | HEMATOLOGY |  |  |  | 50711 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51264 | PLATELET CLUMPS | BLOOD | HEMATOLOGY |  | 40741-1 | Platelet clump [Presence] in Blood by Automated count | 50430 | 
51265 | PLATELET COUNT | BLOOD | HEMATOLOGY | 777-3 | 26515-7 | Platelets [#/volume] in Blood | 50428 | 
51266 | PLATELET SMEAR | BLOOD | HEMATOLOGY | 778-1 | 9317-9 | Platelets [Presence] in Blood by Manual count | 50429 | 
50821 | PO2 | BLOOD | BLOOD GAS |  | 11556-8 | Oxygen [Partial pressure] in Blood | 50019 | 
50832 | "PO2, BODY FLUID" | OTHER BODY FLUID | BLOOD GAS |  | 2706-0 | Oxygen [Partial pressure] in Body fluid | 50036 | 
51267 | POIKILOCYTOSIS | BLOOD | HEMATOLOGY | 779-9 | 779-9 | Poikilocytosis [Presence] in Blood by Light microscopy | 50431 | 
51268 | POLYCHROMASIA | BLOOD | HEMATOLOGY | 10378-8 | 10378-8 | Polychromasia [Presence] in Blood by Light microscopy | 50432 | 
51125 | POLYS | ASCITES | HEMATOLOGY |  | 26520-7 | Polymorphonuclear cells/100 leukocytes in Peritoneal fluid | 50312 | 
51360 | POLYS | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26517-3 | Polymorphonuclear cells/100 leukocytes in Cerebral spinal fluid | 50525 | 
51382 | POLYS | JOINT FLUID | HEMATOLOGY |  | 26522-3 | Polymorphonuclear cells/100 leukocytes in Synovial fluid | 50545 | 
51436 | POLYS | OTHER BODY FLUID | HEMATOLOGY |  | 26518-1 | Polymorphonuclear cells/100 leukocytes in Body fluid | 50596 | 
51455 | POLYS | PLEURAL | HEMATOLOGY |  | 26519-9 | Polymorphonuclear cells/100 leukocytes in Pleural fluid | 50614 | 
51096 | PORPHOBILINOGEN SCREEN | URINE | CHEMISTRY |  | 2809-2 | Porphobilinogen [Presence] in Urine | 50274 | 
50971 | POTASSIUM | BLOOD | CHEMISTRY | 2823-3 | 2823-3 | Potassium [Moles/volume] in Serum or Plasma | 50149 | 
50833 | POTASSIUM | OTHER BODY FLUID | BLOOD GAS |  | 2821-7 | Potassium [Moles/volume] in Body fluid | 50032 | 
50847 | "POTASSIUM, ASCITES" | ASCITES | CHEMISTRY |  | 49789-1 | Potassium [Moles/volume] in Peritoneal fluid | 50048 | 
51041 | "POTASSIUM, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 2821-7 | Potassium [Moles/volume] in Body fluid | 50225 | 
51057 | "POTASSIUM, PLEURAL" | PLEURAL | CHEMISTRY |  |  |  | 50243 | 
51064 | "POTASSIUM, STOOL" | STOOL | CHEMISTRY |  | 15202-5 | Potassium [Moles/volume] in Stool | 50251 | 
51097 | "POTASSIUM, URINE" | URINE | CHEMISTRY | 2828-2 | 2828-2 | Potassium [Moles/volume] in Urine | 50275 | 
50822 | "POTASSIUM, WHOLE BLOOD" | BLOOD | BLOOD GAS |  | 6298-4 | Potassium [Moles/volume] in Blood | 50009 | 
51540 | PROBLEM SPECIMEN | BLOOD | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51541 | PROBLEM SPECIMEN | BLOOD | HEMATOLOGY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51542 | PROBLEM SPECIMEN | URINE | HEMATOLOGY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
50972 | PROCAINAMIDE | BLOOD | CHEMISTRY | 3982-6 | 3982-6 | Procainamide [Mass/volume] in Serum or Plasma | 50151 | 
50973 | PROLACTIN | BLOOD | CHEMISTRY | 2842-3 | 2842-3 | Prolactin [Mass/volume] in Serum or Plasma | 50152 | 
51126 | PROMYELOCYTES | ASCITES | HEMATOLOGY |  |  |  | 50704 | 
51269 | PROMYELOCYTES | BLOOD | HEMATOLOGY | 781-5 | 26524-9 | Promyelocytes/100 leukocytes in Blood | 50434 | 
51361 | PROMYELOCYTES | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  |  |  | 50722 | 
51437 | PROMYELOCYTES | OTHER BODY FLUID | HEMATOLOGY |  | 17799-8 | Promyelocytes/100 leukocytes in Body fluid | 50597 | 
51456 | PROMYELOCYTES | PLEURAL | HEMATOLOGY |  |  |  | 50615 | 
50974 | PROSTATE SPECIFIC ANTIGEN | BLOOD | CHEMISTRY | 2857-1 | 2857-1 | Prostate specific Ag [Mass/volume] in Serum or Plasma | 50153 | 
51098 | "PROT. ELECTROPHORESIS, URINE" | URINE | CHEMISTRY |  | 13438-7 | Protein Fractions [interpretation] in Urine by Electrophoresis | 50280 | 
51492 | PROTEIN | URINE | HEMATOLOGY | 5804-0 | 5804-0 | Protein [Mass/volume] in Urine by Test strip | 50655 | 
51270 | "PROTEIN C, ANTIGEN" | BLOOD | HEMATOLOGY |  | 27820-0 | Protein C Ag actual/normal in Platelet poor plasma by Immunologic method | 50435 | 
51271 | "PROTEIN C, FUNCTIONAL" | BLOOD | HEMATOLOGY |  | 27818-4 | Protein C actual/normal in Platelet poor plasma by Chromogenic method | 50436 | 
50975 | PROTEIN ELECTROPHORESIS | BLOOD | CHEMISTRY |  | 24351-9 | Protein electrophoresis panel in Serum or Plasma | 50145 | 
51272 | "PROTEIN S, ANTIGEN" | BLOOD | HEMATOLOGY |  | 27823-4 | Protein S Ag actual/normal in Platelet poor plasma by Immunologic method | 50437 | 
51273 | "PROTEIN S, FUNCTIONAL" | BLOOD | HEMATOLOGY |  | 31102-7 | Protein S actual/normal in Platelet poor plasma by Chromogenic method | 50438 | 
50976 | "PROTEIN, TOTAL" | BLOOD | CHEMISTRY | 2885-2 | 2885-2 | Protein [Mass/volume] in Serum or Plasma | 50171 | 
51099 | PROTEIN/CREATININE RATIO | URINE | CHEMISTRY | 2890-2 | 2890-2 | Protein/Creatinine [Mass ratio] in Urine | 50276 | 
51274 | PT | BLOOD | HEMATOLOGY | 5902-2 | 5964-2 | Prothrombin time (PT) in Blood by Coagulation assay | 50439 | 
51275 | PTT | BLOOD | HEMATOLOGY | 5898-2 | 3173-2 | Activated partial thrombplastin time (aPTT) in Blood by Coagulation assay | 50440 | 
51276 | QUANTITATIVE G6PD | BLOOD | HEMATOLOGY |  | 32546-4 | Glucose-6-Phosphate dehydrogenase [Enzymatic activity/mass] in Red Blood Cells | 50441 | 
50977 | QUINIDINE | BLOOD | CHEMISTRY | 6694-4 | 4014-7 | Quinidine [Mass/volume] in Blood | 50156 | 
50978 | RAPAMYCIN | BLOOD | CHEMISTRY |  | 29247-4 | Sirolimus [Mass/volume] in Blood | 50196 | 
51493 | RBC | URINE | HEMATOLOGY | 5808-1 | 13945-1 | Erythrocytes [#/area] in Urine sediment by Microscopy high power field | 50656 | 
51494 | RBC CASTS | URINE | HEMATOLOGY | 5807-3 | 5807-3 | RBC casts [#/area] in Urine sediment by Microscopy low power field | 50657 | 
51495 | RBC CLUMPS | URINE | HEMATOLOGY |  |  |  | 50658 | 
51127 | "RBC, ASCITES" | ASCITES | HEMATOLOGY |  | 26457-2 | Erythrocytes [#/volume] in Peritoneal fluid | 50313 | 
51362 | "RBC, CSF" | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26454-9 | Erythrocytes [#/volume] in Cerebral spinal fluid | 50526 | 
51383 | "RBC, JOINT FLUID" | JOINT FLUID | HEMATOLOGY |  | 26458-0 | Erythrocytes [#/volume] in Synovial fluid | 50546 | 
51438 | "RBC, OTHER FLUID" | OTHER BODY FLUID | HEMATOLOGY |  | 26455-6 | Erythrocytes [#/volume] in Body fluid | 50598 | 
51457 | "RBC, PLEURAL" | PLEURAL | HEMATOLOGY |  | 26456-4 | Erythrocytes [#/volume] in Pleural fluid | 50616 | 
51277 | RDW | BLOOD | HEMATOLOGY | 788-0 | 30385-9 | Erythrocyte distribution width [Ratio] | 50444 | 
51278 | RED BLOOD CELL FRAGMENTS | BLOOD | HEMATOLOGY |  |  |  | 50443 | 
51279 | RED BLOOD CELLS | BLOOD | HEMATOLOGY | 789-8 | 26453-1 | Erythrocytes [#/volume] in Blood | 50442 | 
50979 | RED TOP HOLD | BLOOD | CHEMISTRY |  |  |  | 50157 | 
51496 | "REDUCING SUBSTANCES, URINE" | URINE | HEMATOLOGY |  |  |  | 50660 | 
51497 | RENAL EPITHELIAL CELLS | URINE | HEMATOLOGY |  | 26052-1 | Epithelial cells.renal [#/area] in Urine sediment by Microscopy high power field | 50659 | 
51280 | REPTILASE TIME | BLOOD | HEMATOLOGY |  | 6683-7 | Reptilase time in Platelet poor plasma by Coagulation assay | 50446 | 
51281 | REPTILASE TIME CONTROL | BLOOD | HEMATOLOGY |  |  |  | 50713 | 
50823 | REQUIRED O2 | BLOOD | BLOOD GAS |  |  |  | 50021 | 
51282 | "RETICULOCYTE COUNT, ABSOLUTE" | BLOOD | HEMATOLOGY |  | 14196-0 | Reticulocytes [#/volume] in Red Blood Cells | 50321 | 
51283 | "RETICULOCYTE COUNT, AUTOMATED" | BLOOD | HEMATOLOGY |  | 17849-1 | Reticulocytes/100 erythrocytes in Red Blood Cells by Automated count | 50447 | 
51284 | "RETICULOCYTE COUNT, MANUAL" | BLOOD | HEMATOLOGY |  | 31112-6 | Reticulocytes/100 erythrocytes in Red Blood Cells by Manual | 50448 | 
51285 | "RETICULOCYTE, CELLULAR HEMOGLOBIN" | BLOOD | HEMATOLOGY |  |  |  | 50368 | 
50980 | RHEUMATOID FACTOR | BLOOD | CHEMISTRY | 6928-6 |  |  | 50158 | 
51286 | RISTOCETIN | BLOOD | HEMATOLOGY |  |  |  | 50449 | 
50981 | SALICYLATE | BLOOD | CHEMISTRY | 4023-8 | 3306-8 | Acetylsalicylate [Mass/volume] in Serum or Plasma | 50072 | 
51287 | SCHISTOCYTES | BLOOD | HEMATOLOGY | 800-3 | 800-3 | Schistocytes [Presence] in Blood by Light microscopy | 50450 | 
51288 | SEDIMENTATION RATE | BLOOD | HEMATOLOGY | 4537-7 | 30341-2 | Erythrocyte sedimentation rate | 50451 | 
51289 | SERUM VISCOSITY | BLOOD | HEMATOLOGY | 3128-6 | 3128-6 | Viscosity of Serum | 50452 | 
50982 | SEX HORMONE BINDING GLOBULIN | BLOOD | CHEMISTRY | 2942-1 |  |  |  | 
51290 | SICKLE CELL PREPARATION | BLOOD | HEMATOLOGY |  | 6864-3 | Hemoglobin S [Presence] in Blood by Solubility test | 50454 | "old lab ITEMID is correct, but loinc seems wrong ??"
51291 | SICKLE CELLS | BLOOD | HEMATOLOGY | 801-1 | 801-1 | Sickle cells [Presence] in Blood by Light microscopy | 50453 | 
50983 | SODIUM | BLOOD | CHEMISTRY | 2951-2 | 2951-2 | Sodium [Moles/volume] in Serum or Plasma | 50159 | 
50848 | "SODIUM, ASCITES" | ASCITES | CHEMISTRY |  | 49790-9 | Sodium [Moles/volume] in Peritoneal fluid | 50049 | 
50834 | "SODIUM, BODY FLUID" | OTHER BODY FLUID | BLOOD GAS |  | 2950-4 | Sodium [Moles/volume] in Body fluid | 50033 | 
51042 | "SODIUM, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 2950-4 | Sodium [Moles/volume] in Body fluid | 50226 | 
51058 | "SODIUM, PLEURAL" | PLEURAL | CHEMISTRY |  |  |  | 50244 | 
51065 | "SODIUM, STOOL" | STOOL | CHEMISTRY |  | 15207-4 | Sodium [Moles/volume] in Stool | 50252 | 
51100 | "SODIUM, URINE" | URINE | CHEMISTRY | 2955-3 | 2955-3 | Sodium [Moles/volume] in Urine | 50277 | 
50824 | "SODIUM, WHOLE BLOOD" | BLOOD | BLOOD GAS |  | 2947-0 | Sodium [Moles/volume] in Blood | 50012 | 
51498 | SPECIFIC GRAVITY | URINE | HEMATOLOGY | 5811-5 | 5811-5 | Specific gravity of Urine by Test strip | 50661 | 
50800 | SPECIMEN TYPE | BLOOD | BLOOD GAS |  |  |  | 50026 | Not in v30 but will be next data dump
51499 | SPERM | URINE | HEMATOLOGY |  | 8248-7 | Spermatozoa [Presence] in Urine sediment by Light microscopy | 50662 | 
51292 | SPHEROCYTES | BLOOD | HEMATOLOGY | 802-9 | 802-9 | Spherocytes [Presence] in Blood by Light microscopy | 50455 | 
50984 | STAT | BLOOD | CHEMISTRY |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
51528 | STDY HOLD | BLOOD | CHEMISTRY |  |  |  | 50695 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51531 | STDYURINE | URINE | CHEMISTRY |  |  |  | 50703 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
50985 | STUDY TUBES | BLOOD | CHEMISTRY |  |  |  |  | 
51293 | SUGAR WATER TEST | BLOOD | HEMATOLOGY |  | 12260-6 | Sucrose hemolysis [Presence] of Red Blood Cells | 50457 | 
51500 | SULFONAMIDES | URINE | HEMATOLOGY |  | 5812-3 | Sulfonamide crystals [Presence] in Urine sediment by Light microscopy | 50663 | 
51555 | SURFACTANT ALBUMIN RATIO | OTHER BODY FLUID | CHEMISTRY |  |  |  |  | "This data was not found in the 2013 data dump, so an itemid with a descriptive name was created"
50986 | TACROFK | BLOOD | CHEMISTRY |  | 11253-2 | Tacrolimus [Mass/volume] in Blood | 50102 | "Duplicate v26 ITEMID exists (50699), contains same type of data"
51539 | TACROFK_2 | BLOOD | CHEMISTRY |  |  |  | 50699 | "There are two ITEMIDs in mimic2v26 which represent TACROFK, but only one in the 2013 lab data dump, so this ITEMID/LABEL was created"
51294 | TARGET CELLS | BLOOD | HEMATOLOGY | 10381-2 | 10381-2 | Target cells [Presence] in Blood by Light microscopy | 50458 | 
51295 | TDT | BLOOD | HEMATOLOGY |  |  |  | 50714 | 
51537 | TDT | OTHER BODY FLUID | HEMATOLOGY |  |  |  | 50730 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51296 | TEARDROP CELLS | BLOOD | HEMATOLOGY | 7791-7 | 7791-7 | Dacrocytes [Presence] in Blood by Light microscopy | 50459 | 
50825 | TEMPERATURE | BLOOD | BLOOD GAS |  |  |  | 50023 | 
50988 | TESTOSTERONE | BLOOD | CHEMISTRY | 2993-4 | 2986-8 | Testosterone [Mass/volume] in Serum or Plasma | 50165 | 
50989 | "TESTOSTERONE, FREE" | BLOOD | CHEMISTRY | 2991-8 | 2991-8 | Testosterone Free [Mass/volume] in Serum or Plasma | 50105 | 
50990 | THEOPHYLLINE | BLOOD | CHEMISTRY | 4049-3 | 4049-3 | Theophylline [Mass/volume] in Serum or Plasma | 50166 | 
51297 | THROMBIN | BLOOD | HEMATOLOGY |  | 3243-3 | Thrombin time in Platelet poor plasma by Coagulation assay | 50460 | 
50991 | THYROGLOBULIN | BLOOD | CHEMISTRY | 3013-0 | 3013-0 | Thyroglobulin [Mass/volume] in Serum or Plasma | 50167 | 
50992 | THYROID PEROXIDASE ANTIBODIES | BLOOD | CHEMISTRY |  | 8099-4 | Thyroperoxidase Ab [Units/volume] in Serum | 50071 | 
50993 | THYROID STIMULATING HORMONE | BLOOD | CHEMISTRY | 3016-3 | 3015-5 | Thyrotropin [Units/volume] in Blood | 50175 | 
50994 | THYROXINE (T4) | BLOOD | CHEMISTRY | 3026-2 | 3025-4 | Thyroxine [Mass/volume] in Blood | 50163 | 
50995 | "THYROXINE (T4), FREE" | BLOOD | CHEMISTRY | 3024-7 | 3024-7 | Thyroxine free [Mass/volume] in Serum or Plasma | 50104 | 
50826 | TIDAL VOLUME | BLOOD | BLOOD GAS |  | 20112-9 | Tidal volume setting Ventilator | 50024 | 
50996 | "TISSUE TRANSGLUTAMINASE AB, IGA" | BLOOD | CHEMISTRY |  | 31017-7 | Tissue transglutaminase IgA Ab [Units/volume] in Serum | 50197 | 
50997 | TOBRAMYCIN | BLOOD | CHEMISTRY | 4058-4 | 35670-9 | Tobramycin [Mass/volume] in Serum or Plasma | 50169 | 
51101 | TOTAL COLLECTION TIME | URINE | CHEMISTRY |  | 13362-9 | Collection duration of Urine | 50256 | 
50849 | "TOTAL PROTEIN, ASCITES" | ASCITES | CHEMISTRY |  | 2883-7 | Protein [Mass/volume] in Peritoneal fluid | 50051 | 
51043 | "TOTAL PROTEIN, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 2881-1 | Protein [Mass/volume] in Body fluid | 50229 | 
51018 | "TOTAL PROTEIN, CSF" | CEREBROSPINAL FLUID (CSF) | CHEMISTRY |  | 2880-3 | Protein [Mass/volume] in Cerebral spinal fluid | 50204 | 
51024 | "TOTAL PROTEIN, JOINT FLUID" | JOINT FLUID | CHEMISTRY |  | 2886-0 | Protein [Mass/volume] in Synovial fluid | 50210 | 
51059 | "TOTAL PROTEIN, PLEURAL" | PLEURAL | CHEMISTRY |  | 2882-9 | Protein [Mass/volume] in Pleural fluid | 50246 | 
51102 | "TOTAL PROTEIN, URINE" | URINE | CHEMISTRY | 2887-8 | 2888-6 | Protein [Mass/volume] in Urine | 50278 | 
50998 | TRANSFERRIN | BLOOD | CHEMISTRY | 2500-7 | 3034-6 | Transferrin [Mass/volume] in Serum or Plasma | 50173 | 
51501 | TRANSITIONAL EPITHELIAL CELLS | URINE | HEMATOLOGY |  | 30089-7 | Transitional cells [#/area] in Urine sediment by Microscopy high power field | 50664 | 
51502 | TRICHOMONAS | URINE | HEMATOLOGY |  | 32724-7 | Trichomonas sp [Presence] in Urine by Light microscopy | 50665 | 
50999 | TRICYCLIC ANTIDEPRESSANT SCREEN | BLOOD | CHEMISTRY |  | 4073-3 | Tricyclic antidepressants [Presence] in Serum or Plasma | 50198 | 
51044 | TRIGLYCER | OTHER BODY FLUID | CHEMISTRY |  | 12228-3 | Triglyceride [Mass/volume] in Body fluid | 50231 | 
51000 | TRIGLYCERIDES | BLOOD | CHEMISTRY | 1644-4 | 2571-8 | Triglyceride [Mass/volume] in Serum or Plasma | 50174 | 
50850 | "TRIGLYCERIDES, ASCITES" | ASCITES | CHEMISTRY |  | 14447-7 | Triglyceride [Mass/volume] in Peritoneal fluid | 50052 | 
51060 | "TRIGLYCERIDES, PLEURAL" | PLEURAL | CHEMISTRY |  | 9619-8 | Triglyceride [Mass/volume] in Pleural fluid | 50247 | 
51001 | TRIIODOTHYRONINE (T3) | BLOOD | CHEMISTRY | 3053-6 | 3053-6 | Triiodothyronine [Mass/volume] in Serum or Plasma | 50162 | 
51503 | TRIPLE PHOSPHATE CRYSTALS | URINE | HEMATOLOGY | 5814-9 | 5814-9 | Triple phosphate crystals [Presence] in Urine sediment by Light microscopy | 50620 | 
51002 | TROPONIN I | BLOOD | CHEMISTRY | 10839-9 | 42757-5 | Troponin I.cardiac [Mass/volume] in Blood | 50188 | 
51003 | TROPONIN T | BLOOD | CHEMISTRY | 6598-7 | 48425-3 | Troponin T.cardiac [Mass/volume] in Blood | 50189 | 
51504 | TYROSINE CRYSTALS | URINE | HEMATOLOGY | 5815-6 | 5815-6 | Tyrosine crystals [Presence] in Urine sediment by Light microscopy | 50667 | 
51004 | "UE3, MATERNAL SCREEN" | BLOOD | CHEMISTRY |  |  |  | 50690 | 
51103 | UHOLD | URINE | CHEMISTRY |  |  |  | 50282 | 
51005 | UPTAKE RATIO | BLOOD | CHEMISTRY | 3050-2 |  |  | 50176 | 
51006 | UREA NITROGEN | BLOOD | CHEMISTRY | 3094-0 | 3094-0 | Urea nitrogen [Mass/volume] in Serum or Plasma | 50177 | 
50851 | "UREA NITROGEN, ASCITES" | ASCITES | CHEMISTRY |  | 12265-5 | Urea nitrogen [Mass/volume] in Peritoneal fluid | 50053 | 
51045 | "UREA NITROGEN, BODY FLUID" | OTHER BODY FLUID | CHEMISTRY |  | 3093-2 | Urea nitrogen [Mass/volume] in Body fluid | 50232 | 
51104 | "UREA NITROGEN, URINE" | URINE | CHEMISTRY |  | 3095-7 | Urea nitrogen [Mass/volume] in Urine | 50283 | 
51007 | URIC ACID | BLOOD | CHEMISTRY | 3084-1 | 3084-1 | Urate [Mass/volume] in Serum or Plasma | 50178 | 
51505 | URIC ACID CRYSTALS | URINE | HEMATOLOGY | 5817-2 | 5817-2 | Urate crystals [Presence] in Urine sediment by Light microscopy | 50670 | 
51105 | "URIC ACID, URINE" | URINE | CHEMISTRY | 3086-6 | 3086-6 | Urate [Mass/volume] in Urine | 50284 | 
51506 | URINE APPEARANCE | URINE | HEMATOLOGY | 5767-9 | 5767-9 | Appearance of Urine | 50623 | 
51507 | "URINE CASTS, OTHER" | URINE | HEMATOLOGY | 9842-6 |  |  | 50668 | 
51508 | URINE COLOR | URINE | HEMATOLOGY | 5778-6 | 5778-6 | Color of Urine | 50633 | 
51509 | URINE COMMENTS | URINE | HEMATOLOGY |  |  |  |  | "No ITEMID in mimic2v26, but exists in 2010 lab data dump"
51106 | URINE CREATININE | URINE | CHEMISTRY |  |  |  | 50258 | 
51510 | "URINE CRYSTALS, OTHER" | URINE | HEMATOLOGY |  | 5783-6 | Unidentified crystals [Presence] in Urine sediment by Light microscopy | 50669 | 
51511 | URINE FAT BODIES | URINE | HEMATOLOGY |  | 2272-3 | Fat [Presence] in Urine | 50638 | 
51512 | URINE MUCOUS | URINE | HEMATOLOGY | 8247-9 | 8247-9 | Mucus [Presence] in Urine sediment by Light microscopy | 50649 | 
51513 | URINE SPECIMEN TYPE | URINE | HEMATOLOGY |  | 19159-3 | Urinalysis specimen collection method | 50666 | 
51107 | "URINE TUBE, HELD" | URINE | CHEMISTRY |  |  |  | 50282 | 
51108 | URINE VOLUME | URINE | CHEMISTRY |  | 28009-9 | Volume of Urine | 50285 | 
51109 | "URINE VOLUME, TOTAL" | URINE | CHEMISTRY |  | 28009-9 | Volume of Urine | 50259 | 
51514 | UROBILINOGEN | URINE | HEMATOLOGY | 5818-0 | 3107-0 | Urobilinogen [Mass/volume] in Urine | 50671 | 
51008 | VALPROIC ACID | BLOOD | CHEMISTRY | 4086-5 | 4086-5 | Valproate [Mass/volume] in Serum or Plasma | 50179 | 
51009 | VANCOMYCIN | BLOOD | CHEMISTRY | 4091-5 | 20578-1 | Vancomycin [Mass/volume] in Serum or Plasma | 50180 | 
50827 | VENTILATION RATE | BLOOD | BLOOD GAS |  |  |  | 50020 | 
50828 | VENTILATOR | BLOOD | BLOOD GAS |  |  |  | 50027 | 
51010 | VITAMIN B12 | BLOOD | CHEMISTRY | 2170-9 | 16695-9 | Cobalamin [Mass/volume] in Blood | 50181 | 
51549 | VOIDED SPECIMEN | ASCITES | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51545 | VOIDED SPECIMEN | BLOOD | BLOOD GAS |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51543 | VOIDED SPECIMEN | BLOOD | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51550 | VOIDED SPECIMEN | BLOOD | HEMATOLOGY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51546 | VOIDED SPECIMEN | CSF | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51554 | VOIDED SPECIMEN | JOINT FLUID | HEMATOLOGY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51544 | VOIDED SPECIMEN | OTHER BODY FLUID | BLOOD GAS |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51547 | VOIDED SPECIMEN | OTHER BODY FLUID | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51551 | VOIDED SPECIMEN | OTHER BODY FLUID | HEMATOLOGY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51552 | VOIDED SPECIMEN | STOOL | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51553 | VOIDED SPECIMEN | URINE | CHEMISTRY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51548 | VOIDED SPECIMEN | URINE | HEMATOLOGY |  |  |  |  | This data originally existed in the 2013 data dump but was deleted by Lu Shen before creation of this table. Re-importing the original 2013 lab data dump will restore the rows
51298 | VON WILLEBRAND FACTOR ACTIVITY | BLOOD | HEMATOLOGY | 6014-5 | 6014-5 | von Willebrand factor (vWf) ristocetin cofactor actual/normal in Platelet poor plasma by Aggregation | 50466 | 
51299 | VON WILLEBRAND FACTOR ANTIGEN | BLOOD | HEMATOLOGY | 6012-9 | 27816-8 | von Willebrand factor (vWf) Ag actual/normal in Platelet poor plasma by Immunologic method | 50465 | 
51515 | WAXY CASTS | URINE | HEMATOLOGY | 5819-8 | 5819-8 | Waxy casts [#/area] in Urine sediment by Microscopy low power field | 50673 | 
51516 | WBC | URINE | HEMATOLOGY | 5821-4 | 5821-4 | Leukocytes [#/area] in Urine sediment by Microscopy high power field | 50674 | 
51517 | WBC CASTS | URINE | HEMATOLOGY | 5820-6 | 5820-6 | WBC casts [#/area] in Urine sediment by Microscopy low power field | 50675 | 
51518 | WBC CLUMPS | URINE | HEMATOLOGY |  |  |  | 50676 | 
51300 | WBC COUNT | BLOOD | HEMATOLOGY |  | 26464-8 | Leukocytes [#/volume] in Blood | 50316 | 
51128 | "WBC, ASCITES" | ASCITES | HEMATOLOGY |  | 26468-9 | Leukocytes [#/volume] in Peritoneal fluid | 50314 | 
51363 | "WBC, CSF" | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  | 26465-5 | Leukocytes [#/volume] in Cerebral spinal fluid | 50527 | 
51384 | "WBC, JOINT FLUID" | JOINT FLUID | HEMATOLOGY |  | 26469-7 | Leukocytes [#/volume] in Synovial fluid | 50548 | 
51439 | "WBC, OTHER FLUID" | OTHER BODY FLUID | HEMATOLOGY |  | 26466-3 | Leukocytes [#/volume] in Body fluid | 50599 | 
51458 | "WBC, PLEURAL" | PLEURAL | HEMATOLOGY |  | 26467-1 | Leukocytes [#/volume] in Pleural fluid | 50617 | 
51533 | WBCP | BLOOD | HEMATOLOGY |  |  |  | 50715 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51301 | WHITE BLOOD CELLS | BLOOD | HEMATOLOGY | 804-5 | 26464-8 | Leukocytes [#/volume] in Blood | 50468 | 
51342 | WRIGHT GIEMSA | BONE MARROW | HEMATOLOGY |  | 10355-6 | Microscopic observation [Identifier] in Bone marrow by Wright Giemsa stain | 50508 | 
51519 | YEAST | URINE | HEMATOLOGY | 5822-2 | 32356-8 | Yeast [Presence] in Urine sediment by Light microscopy | 50677 | 
51129 | YOUNG | ASCITES | HEMATOLOGY |  |  |  | 50705 | 
51364 | YOUNG | CEREBROSPINAL FLUID (CSF) | HEMATOLOGY |  |  |  | 50528 | 
51302 | YOUNG CELLS | BLOOD | HEMATOLOGY |  | 51633-6 | Platelets reticulated/100 platelets in Blood | 50473 | 
51459 | YOUNG CELLS | PLEURAL | HEMATOLOGY |  |  |  | 50618 | 
51538 | [A1c] | BLOOD | CHEMISTRY |  | 4548-4 | Hemoglobin A1c (glycated HgB)/Hemoglobin.total [Moles] in Blood | 50183 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"
51529 | eAG | BLOOD | CHEMISTRY |  |  |  | 50697 | "No match found in 01_2013 lab data dump, exists in mimic2v26, therefore the new LABEL was invented and an itemid was generated"