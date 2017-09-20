setwd("C:/Users/Kojo/Documents/School/SJSU/BIOL255E/Data")

CSU2015 = read.csv("../Data/california-state-university-2015.csv")

SSPI = CSU2015[CSU2015$Job.Title == "STUDENT SERVICES PROFESSIONAL I",]

SSPII = CSU2015[CSU2015$Job.Title == "STUDENT SERVICES PROFESSIONAL II",]

SSPIII = CSU2015[CSU2015$Job.Title == "STUDENT SERVICES PROFESSIONAL III",]

SSPIV = CSU2015[CSU2015$Job.Title == "STUDENT SERVICES PROFESSIONAL IV",]

SSPALL = rbind(SSPI, SSPII, SSPIII, SSPIV)

SSPALL = droplevels(SSPALL)

boxplot(Base.Pay~Job.Title, data = SSPALL,
        names = c("SSPI", "SSPII", "SSPIII", "SSPIV"),
        ylab = "Base Salary in USD",
        col = "green",
        pch = 19,
        main = "CSU Student Services Professional Base Salary, 2015")

print(aggregate(Base.Pay~Job.Title, data = SSPALL, FUN = mean))