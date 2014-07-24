#The purpose of doing PCA analysis is to get an idea of the number of clusters to seed during SOM analysis. 

library(ggplot2)
library(reshape)


data <- read.table("./0.edgerdata.txt",header=TRUE)
attach(data)
names(data)
tail(data)
head(data)


?as.matrix #creates a matrix
?scale
?t

scale_data <- as.matrix(t(scale(t(data[c(2:25)])))) 


head(scale_data)

pca <- prcomp(scale_data, scale=TRUE) # principle component analysis

summary(pca) # This is a nested dataset.  

pca.scores <- data.frame(pca$x) #This takes out the dataset the contains the PCA information. 

data.val <- cbind(data,scale_data,pca.scores)  #Looks like he binds all this together just to have a hard copy, 
#he only uses PC1 and PC2 for the next visualization step AND the 4_SOM analysis.
names(data.val)
write.table(data.val, file="2.pca.scores.txt")
