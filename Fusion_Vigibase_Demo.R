###CONCATENATION démo ET EXTRACTION VIGIBASE

### 1) MERGE DES 2 TABLES (DEMOGRAPHIE)
library(pharmacocaen)
library(fst)
demo <-read_fst("//medical-srv1/Pharmacologi/commun/PHARMACOEPI/sample/demo.fst")

VigiB_extraction_f <-read_fst("//medical-srv1/Pharmacologi/pharmacovigilance/Internes/Claire Bernardeau/FST/Addictovigilance/Code R/Addictosurveillance/VigiB_extraction_f.fst")

VigiB_demo <- 
  merge(x=VigiB_extraction_f,
        y=demo,
        by.x="UMC report ID",
        by.y="UMCReportId",
        all.x=TRUE)


### 2) MERGE DES 2 TABLES (DRUGS)
drug <-read_fst("//medical-srv1/Pharmacologi/commun/PHARMACOEPI/sample/drug.fst")

VigiB_drug <- 
  merge(x=VigiB_extraction_f,
        y=drug,
        by.x="UMC report ID",
        by.y="UMCReportId",
        all.x=TRUE)


### 3) MERGE DES 2 TABLES (ADR)
adr <-read_fst("//medical-srv1/Pharmacologi/commun/PHARMACOEPI/sample/adr.fst")

VigiB_adr <- 
  merge(x=VigiB_extraction_f,
        y=adr,
        by.x="UMC report ID",
        by.y="UMCReportId",
        all.x=TRUE)

# RMQ : Nbre de lignes différents, car parfois plusieurs mdc ou pls ADR pour une même déclaration


### 4) MERGE DES 3 TABLES (drug, adr et demo)
VigiB_merge <- 
  merge(x=VigiB_demo,
        y=VigiB_drug,
        z=VigiB_adr,
        by.x=c("UMC report ID","Country of primary source"),
        by.y=c("UMC report ID","Country of primary source"),
        by.z=c("UMC report ID","Country of primary source"),
        all.x=TRUE)





### 5)Extraire les DrecNo d'intérêt (oxycodone, fentanyl, kétamine, codéine, morphine et tramadol) et les Drug_Id d'intérêt
### --> Codes à tester avec les tables (voir avec Charles)

# Extraction des DrecNo d'intérêt dans l'objet (Select_DrecNo)
# Mettre à jour le code avec les bons noms de table et de colonne
Select_DrecNo <- mp [drug == c("oxycodone", "fentanyl", "ketamine", "codeine", "morphine", "tramadol"), DrecNo]

# Extraction des MedDRA_Id du SMQ "Drug abuse, dependance and withdrawal"
# Mettre à jour le code avec les bons noms de table et de colonne

Select_MedDRA <- MedDRA[adr== c(x,y,z,), DrecNo]

# Filtre des lignes dans VigiB_merge avec les DrecNo d'intérêt et les Drug_Id d'intérêt
VigiB_merge_f <-
  VigiB_merge %>% filter(DrecNo %in% Select_DrecNo, Drug_Id %in% Select_MedDRA)






