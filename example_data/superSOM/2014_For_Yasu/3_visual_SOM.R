library(ggplot2)
library(grid)
library(reshape)
library(animation)
library(gridExtra)

data <- read.table("./2.supersom.data.txt", header=TRUE)

names(data)

###SPECIFY A CLUSTER

cluster <- subset(data, cluster=="9")

p <- ggplot(cluster, aes(x=m82.PC1, y=m82.PC2, xend=penn.PC1, yend=penn.PC2))

p + geom_segment(arrow=arrow(length=unit(0.4,"cm")), alpha=0.5) + theme_bw()
