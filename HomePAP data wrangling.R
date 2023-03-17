##Home PAP Data Wrangling
library(readr)
library(tidyverse)
library(skimr)

#Baseline data frame

homepap_baseline_dataset_0_1_0 <- read_csv("~/Desktop/Home CPAP/homepap-baseline-dataset-0.1.0.csv")
View(homepap_baseline_dataset_0_1_0)
baseline<-homepap_baseline_dataset_0_1_0
bl_df<- baseline %>%
  select(nsrrid,age, gender, race3, ethnicity, neckcm, bmi, systolic, 
         diastolic, dxdiab, dxhtn, dxdep, dxemph,
         acceptance, cal_total, fosq_global, ahi_full)

##Not available: "slpprdp", "avgsao2", dxplhtn, avgpapuse

skim(bl_df)

#One Month data frame
homepap_month1_dataset_0_1_0 <- read_csv("~/Desktop/Home CPAP/homepap-month1-dataset-0.1.0.csv")
View(homepap_month1_dataset_0_1_0)
onemonth<-homepap_month1_dataset_0_1_0
onemonth_df<- onemonth %>%
  select(nsrrid,age, gender, race3, ethnicity,  systolic, 
         diastolic, cal_total, fosq_global,  avgpapuse)

skim(onemonth_df)

##Not available: slpprdp, avgsao2, dxdiab, dxhtn, dxdep, dxemph,dxplhtn, acceptance, neckcm, bm, ahi_full


#Three month data frame
homepap_month3_dataset_0_1_0 <- read_csv("~/Desktop/Home CPAP/homepap-month3-dataset-0.1.0.csv")
View(homepap_month3_dataset_0_1_0)
threemonth<-homepap_month3_dataset_0_1_0
threemonth_df<- threemonth %>%
  select(nsrrid,age, gender, race3, ethnicity,  bmi, systolic, 
         diastolic, cal_total, fosq_global, avgpapuse)

skim(threemonth_df)

##Not available: neckcm,dxdiab,dxhtn, dxdep, dxemph,acceptance,slpprdp, avgsao2,dxplhtn, ahi_full

#Descriptive statistics of baseline data
skim(baseline$dxplhtn) #no diagnoses of pulm htn at baseline #46 individuals missing pulm htn dx
skim(baseline$dxemph) #no diagnoses of emphysema at baseline #44 individuals missing emphysema dx
table(baseline$acceptance)
#dxplhtn, acceptance, and dxemph not columns in one month and three month data

#Descriptive statistics of baseline dx and average minutes used per night and accepted automatic positive airway pressure

#no average pap use at baseline
skim(onemonth$avgpapuse)
skim(threemonth$avgpapuse)

