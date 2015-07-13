# loading data
PlantGrowth

# setting
library("ggplot2", lib.loc="C:/Program Files/R/R-3.2.1/library")
library("graphics", lib.loc="C:/Program Files/R/R-3.2.1/library")
library("grDevices", lib.loc="C:/Program Files/R/R-3.2.1/library")

# ggplot
ggplot(PlantGrowth, aes(x=group, y=weight, group=group, colour=group))+geom_point(size=2, shape=15)