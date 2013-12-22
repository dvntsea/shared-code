setwd("~/Desktop/Stanford/USM")

##Below is a search of a dataset, kepler_ooi, extracted from the Kepler Objects of Interest Catalog

library(Hmisc)
#import and summary of data
kepler_ooi = read.csv('kepler_ooi.csv')
summary(kepler_ooi)
names(kepler_ooi)
attach(kepler_ooi)
sapply(kepler_ooi, is.numeric)
#several different forms of dataset for ease of use later
kepler_ooi_numeric = kepler_ooi[sapply(kepler_ooi, is.numeric)]
kepler_ooi_matrix = as.matrix(kepler_ooi_numeric)

#correlation matrix with P values
kepler_corr = rcorr(kepler_ooi_matrix, type="spearman")

#planetary scatterplot matrix
pairs(~Teff+Planet.Radius+Metallicity+log.g.+Age,data=kepler_ooi,
      main="Planetary Parameters Matrix")

#stellar scatterplot matrix
pairs(~Teff+Stellar.Radius+Stellar.Mass+log.g.+Age,data=kepler_ooi,
      main="Stellar Parameters Matrix")

#all objects movement matrix
pairs(~Time.of.Transit.Epoch+Period+Transit.Depth+Duration,data=kepler_ooi,
      main="Movement Matrix")

