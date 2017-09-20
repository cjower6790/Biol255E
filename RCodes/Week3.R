library(readxl)

install.packages('readxl')

df = read_excel(path = '../data/Reinhart-Rogoff.xlsx',na='n.a.')

mean(df$`90 or above`, na.rm = TRUE)

mean(df$`90 or above`[1:15], na.rm=TRUE)

#####################################################################################

df = read.csv('../data/Messy_means2.csv')

dotchart(df$Value)

# Dotchart shows one very small value and one very large value that 
# are suspect.  Let's remove those two values, turned to NA

# Set the minimum value in the dataset to NA
which.min(df$Value)

df[48,'Value'] = NA

## Set the maximum value in the dataset to NA
which.max(df$Value)

##df[22, 'Value'] = NA or:

df[which.max(df$Value), 'Value']= NA

# New dotchart should show a nice cluster of real data points without two outliers
dotchart(df$Value)

df$Value[df$Type=="Mean"] 

# OR

df[df$Type=="Mean", "Value"]

mymeans = df[df$Type=="Mean", "Value"]

####################################################################################

df = read_excel("../data/Heating_trial_info.xlsx")

str(df)

# Some of these columns (3-8) should be factors.
df[, 3:8] = lapply(df[,3:8], factor)

# Use levels() to see all levels of a categorical factor
levels(df$TCchannel)
levels(df$MusselTagID)
levels(df$`Gaping?`)

# Use summary() to show counts of factor columns
summary(df)
summary(df$MusselTagID)

# Summary() used on numeric columns shows quartiles
summary(df$TrialNumber)


# Use table() to show counts of categorical variables in a column
table(df$AliveDead)
table(df$TCLocation)

# Use xtavs() to make a contingency table of counts of factors
xtabs( ~AliveDead + MusselTagID, data = df)

# For 3 columns, you get a 3-dimensional table, referred to as a formula in "R"
xtabs( ~AliveDead + MusselTagID + TCLocation, data = df)

#####################################################################################

#Joining R Files

# Read in one SVLCallisaurus file
svl1 = read.csv("../Data/SVLCallisaurus.csv")
str(svl1)

# Read in the other
svl2 = read.csv("../Data/SVLCallisaurus2.csv")
str(svl2)

# Both data frames, svl1 and svl2, share the same column titles and organization
# columns, so they could be put together.

svlAll = rbind(svl1,svl2)

# Change column names
colnames(svl1) = c('Animal.ID', 'Sex', 'SVL.mm')
colnames(svl2) = c('Animal.ID', 'Sex', 'SVL.mm')
svlALL = rbind(svl1,svl2)

# Save the joined files as a new csv file
write.csv(x = svlAll, file = 'SVLjoined.csv', row.names = FALSE)

#####################################################################################
boxplot(SVL.mm~Sex, data = svlALL, xlab = 'Sex',
        ylab = 'Snout-vent length, mm')

# Change order of levels
svl1$Sex = factor(svl1$Sex, levels = c('F', 'M'))

boxplot(SVL.mm~Sex, data=svlALL,
        names = c('Female', 'Male')) # "Names" rename labels, make sure in same order 
#                                       as factors


# Calculate multiple means

aggregate(SVL.mm~Sex, data = svlALL, FUN = mean)