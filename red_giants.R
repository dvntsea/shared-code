setwd("~/Desktop/Stanford/USM")
rg1 = read.csv('red_giant_000892010-2009131105131.csv')
rg2 = read.csv('red_giant_000892107_2009131105131.csv')
rg3 = read.csv('red_giant_000892738_2009131105131.csv')
rg4 = read.csv('red_giant_000892760_2009131105131.csv')
rg5 = read.csv('red_giant_000893210_2009131105131.csv')
rg6 = read.csv('red_giant_001026084_2009131105131.csv')
rg7 = read.csv('red_giant_001026180_2009131105131.csv')
rg8 = read.csv('red_giant_001027337-2009131105131.csv')

#example exploration of one dataset
summary(rg1)
names(rg1)
sapply(rg1, is.numeric)

#scatterplot of time vs. SAP_FLUX for these datasets
plot(rg1$TIME, rg1$SAP_FLUX, main = "Light Curve red_giant_000892010-2009131105131.csv")
plot(rg2$TIME, rg2$SAP_FLUX, main = "Light Curve red_giant_000892107_2009131105131.csv")
plot(rg3$TIME, rg3$SAP_FLUX, main = "Light Curve red_giant_000892738_2009131105131.csv")
plot(rg4$TIME, rg4$SAP_FLUX, main = "Light Curve red_giant_000892760_2009131105131.csv")
plot(rg5$TIME, rg5$SAP_FLUX, main = "Light Curve red_giant_000893210_2009131105131.csv")
plot(rg6$TIME, rg6$SAP_FLUX, main = "Light Curve red_giant_001026084_2009131105131.csv")
plot(rg7$TIME, rg7$SAP_FLUX, main = "Light Curve red_giant_001026180_2009131105131.csv")
plot(rg8$TIME, rg8$SAP_FLUX, main = "Light Curve red_giant_001027337-2009131105131.csv")

#manipulation of data to rg1 (example)
rg1_numeric = rg1[sapply(rg1, is.numeric)]
rg1_matrix = as.matrix(rg1_numeric)

rg2_numeric = rg2[sapply(rg2, is.numeric)]
rg2_matrix = as.matrix(rg2_numeric)

rg3_numeric = rg3[sapply(rg3, is.numeric)]
rg3_matrix = as.matrix(rg3_numeric)

rg4_numeric = rg4[sapply(rg4, is.numeric)]
rg4_matrix = as.matrix(rg4_numeric)

library(Hmisc)
#correlation matrix of seven numeric variables with p-values
rcorr(rg1_matrix, type="spearman")

library(corrgram)

corrgram(rg1_matrix, order=NULL, lower.panel=panel.shade,
         upper.panel=NULL, text.panel=panel.txt,main="Red Giant Data - red_giant_000892010-2009131105131.csv")


corrgram(rg1_matrix, order=NULL, lower.panel=panel.shade,
         upper.panel=NULL, text.panel=panel.txt,main="Red Giant Data - red_giant_000892107_2009131105131.csv")


corrgram(rg1_matrix, order=NULL, lower.panel=panel.shade,
         upper.panel=NULL, text.panel=panel.txt,main="Red Giant Data - red_giant_000892738_2009131105131.csv")


corrgram(rg1_matrix, order=NULL, lower.panel=panel.shade,
         upper.panel=NULL, text.panel=panel.txt,main="Red Giant Data - red_giant_000892760_2009131105131.csv")