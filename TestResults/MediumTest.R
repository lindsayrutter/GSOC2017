library(GGally)
library(ggplot2)
library(dplyr)

rm(list=ls())
myDiamonds <- diamonds[1:1000,]
scatDat <- select(myDiamonds, carat, depth, price)

# Scatterplot matrix
ggpairs(scatDat)

# Parallel coordinate plot
ggparcoord(data = myDiamonds, columns = c(1, 5:10))
