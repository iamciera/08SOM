library(kohonen)

data <- read.table("./0.deltaPCs.txt",header=TRUE)

names(data)

deltaPC1 <- as.matrix(data$dPC1)
deltaPC2 <- as.matrix(data$dPC2)
deltaPC3 <- as.matrix(data$dPC3)
deltaPC4 <- as.matrix(data$dPC4)
deltaPC5 <- as.matrix(data$dPC5)
deltaPC6 <- as.matrix(data$dPC6)

all.data <- list(deltaPC1, deltaPC2, deltaPC3, deltaPC4, deltaPC5, deltaPC6)

set.seed(2)

ssom <- supersom(all.data, somgrid(3,3,"hexagonal"),weights=c(0.2723,0.2236,0.1730,0.1603,0.1007,0.07008))

summary(ssom)

plot(ssom, type ="changes")
plot(ssom, type = "codes")
plot(ssom, type = "counts")
plot(ssom, type = "quality")

data.val <- cbind(data,ssom$unit.classif,ssom$distances)

head(data.val)

write.table(data.val, file="2.supersom.data.txt")

##CODES##
codes <- ssom$codes
write.table(codes, file="supersom.codes.txt")