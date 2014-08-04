library(ggplot2)


data <- read.table("./2.pca.scores.txt",header=TRUE)

names(data)

p <- ggplot(data, aes(PC1, PC2))
p + geom_point()

###Looks good to me. The only reason I do the PCA is to look at the overall patterns of 
#gene expression variance, to determine how many clusters for self-organizing maps are 
#appropriate. It looks to me like there are 3, maybe 4?, major clusters? I will try 3-4 
#clusters when making the self-organizing maps next
