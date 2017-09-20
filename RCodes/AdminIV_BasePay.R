#Cole Jower
#Biol255E: Homework 8.30.2017

# Code to import data using a relative path to /data/

# Subset out data for a particular job title 

# Make a boxplot, with a proper y-axis label, titled with job tiyle you
# subset out

# Job Title: Administrator IV
# Base Salary

setwd("C:/Users/Kojo/Documents/School/SJSU/BIOL255E/RCodes")

CSU2015 = read.csv("../data/california-state-university-2015.csv")

boxplot(CSU2015$Base.Pay[CSU2015$Job.Title=="ADMINISTRATOR IV"],
     xlab = "Base Salary in USD",
     col = "green",
     pch = 19,
     main = "Administrator IV Base Salary, 2015",
     horizontal = TRUE)