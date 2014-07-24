library(kohonen)

data <- read.table("./fitted.pvals.txt",header=TRUE)
names(data)

sig.tissue <- subset(data, p.adj.tis < 0.05)

m.m82 <- as.matrix(sig.tissue[2:7])
m.penn <- as.matrix(sig.tissue[8:13])


sc.m82 <- t(scale(t(m.m82)))
sc.penn <- t(scale(t(m.penn)))

all.data <- list(sc.m82,sc.penn)

set.seed(2)

ssom <- supersom(all.data, somgrid(3,3,"hexagonal"),weights=c(0.5,0.5))

summary(ssom)

plot(ssom, type ="changes")
plot(ssom, type = "codes")
plot(ssom, type = "counts")
plot(ssom, type = "quality")

data.val <- cbind(sig.tissue,sc.m82,sc.penn,ssom$unit.classif,ssom$distances)
head(data.val)


write.table(data.val, file="supersom.data.txt")

####CODES#####

codes <- ssom$codes
head(codes)
write.table(codes, file="codes.txt")