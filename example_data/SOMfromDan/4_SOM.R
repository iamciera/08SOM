library(kohonen)

data <- read.table("./2.pca.scores.txt",header=TRUE)
names(data)

som.data <- as.matrix(data[,c(26:49)]) # subset only the scaled gene expression values.  

head(som.data)

set.seed(2)

som <- som(data=som.data, somgrid(2,3,"hexagonal"))
summary(som)
str(som)

#NOTE: When I tried a 2x2 SOM at first (based on PCA results) the "mean distance to closest unit" 
#wasn't low enough for my tastes. So I increased the cluster number to 2x3 and I found that satisfactory.

plot(som, type ="changes")
plot(som, type = "codes")
plot(som, type = "counts")
plot(som, type = "quality")

som$unit.classif # what is this? This must be the cluster assignment. 
som$distances #distance to each other?  

data.val <- cbind(data,som$unit.classif,som$distances)

head(data.val, 40)
write.table(data.val, file="5.som.data.txt")


####If you want the cluster code values ....#####
# What is this part?

codes <- all.som$codes
head(codes)
write.table(codes, file="codes.txt")