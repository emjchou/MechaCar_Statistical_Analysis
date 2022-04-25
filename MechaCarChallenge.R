# install packages and libraries
library(tidyverse)
library(jsonlite)


# read in the suspension_coil.csv file
sus_coil<-read.csv("Resources/Suspension_Coil.csv")


# use summarize() function to create a total_summary dataframe for PSI
total_summary<-sus_coil %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                      Variance=var(PSI), SD=sd(PSI), .groups="keep")

# use group_by() and summarize() to create a lot_summary dataframe for PSI grouped by lot
lot_summary<-sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(
  Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups="keep"
)
