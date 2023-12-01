
### SCRIPT R : PROJET ADDICTOVIGILANCE 

### Installation des packages + celui de Charles (via GitHub)

library(readxl)
library(pharmacocaen)
library(fst)


### 1) Extraction des feuilles "Cases" de chaque table

##### A) Kétamine (x5)
Ketamine_Italie_cases<-read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Kétamine/Italie/Ketamine_Italy_2015a2023.xlsx", sheet="Cases")

Ketamine_Allemagne_cases<-read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Kétamine/Allemagne/Ketamine_Allemagne_2015a2023.xlsx", sheet="Cases")

Ketamine_France_cases<-read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Kétamine/France/Ketamine_France_2015a2023.xlsx", sheet="Cases")

Ketamine_RU_cases<-read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Kétamine/RU/Kétamine_RU_2015a2023.xlsx", sheet="Cases")

Ketamine_USA_cases<-read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Kétamine/USA/Ketamine_USA_2015a2023.xlsx", sheet="Cases")

##### B) Codéine (x5)
Codeine_Allemagne_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Codéine/Allemagne/Codeine_allemagne_2015a2023.xlsx", sheet="Cases")

Codeine_France_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Codéine/France/Codeine_France_2015a2023.xlsx", sheet="Cases")

Codeine_Italie_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Codéine/Italie/Codeine_italie_2015a2023.xlsx", sheet="Cases")

Codeine_RU_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Codéine/RU/Codeine_RU_2015a2023.xlsx", sheet="Cases")

Codeine_USA_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Codéine/USA/Codeine_USA_2015a2023.xlsx", sheet="Cases")

##### C) Fentanyl(x6)
Fentanyl_Allemagne_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Fentanyl/Allemagne/Fentanyl_Allemagne_2015a2023.xlsx", sheet="Cases")

Fentanyl_France_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Fentanyl/France/Fentanyl_France_2015a2023.xlsx", sheet="Cases")

Fentanyl_Italie_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Fentanyl/Italie/Fentanyl_Italie_2015a2023.xlsx", sheet="Cases")

Fentanyl_RU_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Fentanyl/RU/Fentanyl_RU_2015a2023.xlsx", sheet="Cases")

Fentanyl_USA_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Fentanyl/USA/Fentanyl_USA_2015a2020.xlsx", sheet="Cases")

Fentanyl_USA_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Fentanyl/USA/Fentanyl_USA_2020a2023.xlsx", sheet="Cases")

##### D) Morphine (x8)
Morphine_Allemagne_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/Allemagne/Morphine_Allemagne_2015a2023.xlsx", sheet="Cases")

Morphine_France_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/France/Morphine_France_2015a2023.xlsx", sheet="Cases")

Morphine_Italie_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/Italie/Morphine_Italie_2015a2023.xlsx", sheet="Cases")

Morphine_RU_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/RU/Morphine_RU_2015a2023.xlsx", sheet="Cases")

Morphine_USA_cases_1 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/USA/Morphine_USA_2015a2020.xlsx", sheet="Cases")

Morphine_USA_cases_2 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/USA/Morphine_USA_2021.xlsx", sheet="Cases")

Morphine_USA_cases_3 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/USA/Morphine_USA_2022.xlsx", sheet="Cases")

Morphine_USA_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Morphine/USA/Morphine_USA_2023.xlsx", sheet="Cases")

##### E) Oxycodone (x10)
Oxycodone_Allemagne_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/Allemagne/Oxycodone_Allemagne_2015a2023.xlsx", sheet="Cases")

Oxycodone_France_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/France/Oxycodone_France_2015a2023.xlsx", sheet="Cases")

Oxycodone_Italie_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/Italie/Oxycodone_Italie_2015a2023.xlsx", sheet="Cases")

Oxycodone_RU_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/RU/Oxycodone_RU_2015a2023.xlsx", sheet="Cases")

Oxycodone_USA_cases_6 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/USA/Oxycodone_USA_2015a2019.xlsx", sheet="Cases")

Oxycodone_USA_cases_5 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/USA/Oxycodone_USA_2020.xlsx", sheet="Cases")

Oxycodone_USA_cases_1 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/USA/Oxycodone_USA_2022.xlsx", sheet="Cases")

Oxycodone_USA_cases_2 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/USA/Oxycodone_USA_2023.xlsx", sheet="Cases")

Oxycodone_USA_cases_3 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/USA/Oxycodone_USA_01012021a30062021.xlsx", sheet="Cases")

Oxycodone_USA_cases_4 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Oxycodone/USA/Oxycodone_USA_01072021a31122021.xlsx", sheet="Cases")

##### F) Tramadol(x6)
Tramadol_Allemagne_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Tramadol/Allemagne/Tramadol_Allemagne_2015a2023.xlsx", sheet="Cases")

Tramadol_France_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Tramadol/France/Tramadol_France_2015a2023.xlsx", sheet="Cases")

Tramadol_Italie_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Tramadol/Italie/Tramadol_Italie_2015a2023.xlsx", sheet="Cases")

Tramadol_RU_cases <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Tramadol/RU/Tramadol_RU_2015a2023.xlsx", sheet="Cases")

Tramadol_USA_cases_1 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Tramadol/USA/Tramadol_USA_2015a2021.xlsx", sheet="Cases")

Tramadol_USA_cases_2 <- read_excel("Z:/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Extractions/Tramadol/USA/Tramadol_USA_2022a2023.xlsx", sheet="Cases")

### 2) Concaténation des tableaux 

VigiB_extraction <- bind_rows (Tramadol_Allemagne_cases,Tramadol_France_cases,Tramadol_Italie_cases, Tramadol_RU_cases,Tramadol_USA_cases_1,Tramadol_USA_cases_2, Oxycodone_USA_cases_4, Oxycodone_USA_cases_3, Oxycodone_USA_cases_2, Oxycodone_USA_cases_1, Oxycodone_USA_cases_5, Oxycodone_USA_cases_6, Oxycodone_RU_cases, Oxycodone_Italie_cases, Oxycodone_France_cases, Oxycodone_Allemagne_cases, Morphine_USA_cases, Morphine_USA_cases_3 , Morphine_USA_cases_2, Morphine_USA_cases_1, Morphine_RU_cases, Morphine_Italie_cases, Morphine_France_cases, Morphine_Allemagne_cases, Fentanyl_USA_cases,Fentanyl_USA_cases, Fentanyl_RU_cases, Fentanyl_Italie_cases, Fentanyl_France_cases, Fentanyl_Allemagne_cases, Codeine_USA_cases, Codeine_RU_cases, Codeine_Italie_cases, Codeine_France_cases, Codeine_Allemagne_cases, Ketamine_USA_cases, Ketamine_RU_cases, Ketamine_France_cases, Ketamine_Allemagne_cases,Ketamine_Italie_cases)

### 3) Filtrer les données pour ne garder que les colonnes "UMCReportID" et "Pays"

VigiB_extraction_f <- 
  VigiB_extraction %>% select (`Country of primary source`, `UMC report ID`)

### 4) Exporter la table terminée 

write_fst(VigiB_extraction_f, "//medical-srv1/Pharmacologi/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Code R/Addictosurveillance/VigiB_extraction_f.fst")
