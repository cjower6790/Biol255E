#week 2

setwd("C:/Users/Kojo/Documents/School/SJSU/BIOL255E/RCodes")

df = read.csv("../data/SVLCallisaurus.csv")

# import tab-delimited data file

limp = read.table(file="../data/LimpetRaspingRate.txt", header = TRUE, 
                  sep = "\t")

boxplot(limp$Growth)

df = read.table("../data/SVLCallisaurus.csv", header = TRUE,
                sep = ",")

waves = read.fwf("../data/CDIP_158_201702.txt")

test = scan(file = "../data/CDIP_158_201702.txt", what = 'character')

test = readLines(con = "../data/CDIP_158_201702.txt")

################### PLotting

dotchart(limp$Temperature)

dotchart(limp$Temperature, groups = limp$Species,
         xlab = 'Temperature, C')

plot(limp$Temperature[limp$Species=="pelta"], limp$RaspRate[limp$Species=="pelta"],
     xlab = "Temperature, C", 
     ylab = "RaspRate",
     col = "forestgreen",
     pch = 17,
     xlim = c(4,22), #Range is set by user
     ylim = c(0,40))
points(x = limp$Temperature[limp$Species=="scabra"], #Points adds to current scatter plot
       limp$RaspRate[limp$Species=="scabra"],
       col = "purple",
       pch = 19)

plot(limp$Temperature[limp$Species=="pelta"], limp$RaspRate[limp$Species=="pelta"],
     xlab = "Temperature, C", 
     ylab = "RaspRate",
     col = "forestgreen",
     pch = 17,
     xlim = range(limp$Temperature), #Range is determined by R
     ylim = range(limp$RaspRate))
points(x = limp$Temperature[limp$Species=="scabra"], 
       limp$RaspRate[limp$Species=="scabra"],
       col = "purple",
       pch = 19)
legend("topleft",legend = c("pelta", "scabra"), #can choose exact location by identifying x,y 
       pch = c(17,19), #order of point shapes must be in same order as the legend items
       col = c("forestgreen","purple"))




