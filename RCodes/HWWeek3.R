df = read.csv("../data/california-state-university-2015.csv")

levels(df$Job.Title)

jobs = levels(df$Job.Title)

jobs[grep(pattern = 'STUDENT SERVICES PROFESSIONAL I', 'STUDENT SERVICES PROFESSIONAL II', 
          'STUDENT SERVICES PROFESSIONAL III', 'STUDENT SERVICES PROFESSIONAL IV', x = jobs)]