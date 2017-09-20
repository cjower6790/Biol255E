#Cole Jower
#Biol255E: Homework 9.6.2017

# Base salary box plots: Student Services Professional I-IV

CSU2015 = read.csv("../data/california-state-university-2015.csv")
  
boxplot(CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL I"], 
          CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL II"],
        CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL III"],
        CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL IV"],
        names = c("SSPI", "SSPII", "SSPIII", "SSPIV"),
          ylab = "Base Salary in USD",
          col = "green",
          pch = 19,
          main = "CSU Student Services Professional Base Salary, 2015")

mean(CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL I"])

mean(CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL II"])

mean(CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL III"])

mean(CSU2015$Base.Pay[CSU2015$Job.Title=="STUDENT SERVICES PROFESSIONAL IV"])
