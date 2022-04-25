# install packages and libraries
library(dplyr)
library(tidyverse)
library(jsonlite)

# Deliverable 1 ---------------------------------------------------------------
# read in the MechaCar_mpg.csv file
mpg_table<-read.csv("Resources/MechaCar_mpg.csv")

# perform linear regression using lm(all columns)
model<-lm(
  mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, 
  mpg_table)

# use summary()
summary(model)

#Deliverable 2 ----------------------------------------------------------------
# read in the suspension_coil.csv file
sus_coil<-read.csv("Resources/Suspension_Coil.csv")


# use summarize() function to create a total_summary dataframe for PSI
total_summary<-sus_coil %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                      Variance=var(PSI), SD=sd(PSI), .groups="keep")

# use group_by() and summarize() to create a lot_summary dataframe for PSI grouped by lot
lot_summary<-sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(
  Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups="keep"
)

#Deliverable 3 -----------------------------------------------------------------
# use t.test to determine if PIS is statistically different from 1500 PSI population mean
t.test(sus_coil$PSI, mu=1500)
# p-value is 0.06, whihc is above 0.05 significance level, so the two means are statistically similiar

# use three more t.test using subset() to determine statistical difference for each lot
# Lot1
t.test(subset(sus_coil$PSI, sus_coil$Manufacturing_Lot=="Lot1"), mu=1500)

# Lot2
t.test(subset(sus_coil$PSI, sus_coil$Manufacturing_Lot=="Lot2"), mu=1500)

# Lot3
t.test(subset(sus_coil$PSI, sus_coil$Manufacturing_Lot=="Lot3"), mu=1500)
