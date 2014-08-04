library(ggplot2)
library(reshape)


data <- read.table("./5.SOM.data.txt",header=TRUE)
names(data)

#Visualize SOM/PCA by cluster
p <- ggplot(data, aes(PC1, PC2, colour=factor(som.unit.classif))) #changed to som.unit.classif from "cluster"
p + geom_point() + theme_bw()

#Visualize individual clusters, What is the this boxplot telling us?

#First, choose the cluster to visualize
sub_cluster <- subset(data, som.unit.classif=="5")

sub_data <- sub_cluster[,26:49] # just the sample types
names(sub_data)
m.data <- melt(sub_data) 

p <- ggplot(m.data, aes(x=variable, y=value))
p + geom_point(alpha=0.5, position="jitter", size=1) + geom_boxplot(alpha=0.75, outlier.size=0) 


