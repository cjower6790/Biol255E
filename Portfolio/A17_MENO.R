``` {r Depth&MaterialVSCoverClassMENO}

# Native presence by Compost 1 inch
MENO = A17[A17$Code == "MENO",]
MENOCompost = MENO[MENO$Material == "Compost",]
MENOCompost1 = MENOCompost[MENOCompost$Soil.Depth == "1",]

MC1 <- table(MENOCompost1$Status, MENOCompost1$Presence)
MC1Table <- as.data.frame.matrix(MC1)

MC1Freq <- (MC1Table/nrow(MENOCompost))*100
MC1RelFreq <-as.matrix(MC1Freq)
barplot(MC1RelFreq, ylab = "Relative Frequency", xlab = "Cover Class", col = c("blue", "green", "red"), beside = TRUE, width = .3)

# Native presence by Compost 2 inch
MENOCompost2 = MENOCompost[MENOCompost$Soil.Depth == "2",]

MC2 <- table(MENOCompost2$Status, MENOCompost2$Presence)
MC2Table <- as.data.frame.matrix(MC2)

MC2Freq <- (MC2Table/nrow(MENOCompost))*100
MC2RelFreq <- as.matrix(MC2Freq)
barplot(MC2RelFreq, ylab = "Relative Frequency", xlab = "Cover Class", col = c("blue", "green", "red"), beside = TRUE, width = .3)

# Native presence by Compost 3 inch
MENOCompost3 = MENOCompost[MENOCompost$Soil.Depth == "3",]

MC3 <- table(MENOCompost3$Status, MENOCompost3$Presence)
MC3Table <- as.data.frame.matrix(MC3)

MC3Freq <- (MC3Table/nrow(MENOCompost))*100
MC3RelFreq <- as.matrix(MC3Freq)
barplot(MC3RelFreq, ylab = "Relative Frequency", xlab = "Cover Class", col = c("blue", "green", "red"), beside = TRUE, width = .3)

MENOALL = rbind(MC1RelFreq, MC2RelFreq, MC3RelFreq)

barplot(MENOALL, ylab = "Relative Frequency", xlab = "Cover Class", col = c("blue", "green", "red"), beside = TRUE, width = .3)

```