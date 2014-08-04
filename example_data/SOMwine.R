library("kohonen")
data("wines")
wines.sc <- scale(wines)
head(wines.sc)

set.seed(7)

wine.som <- som(data = wines.sc, grid = somgrid(5,4, "hexagonal"))
head(wine.som)
plot(wine.som, main = "Wine data")

data("nir")
attach(nir)
head(nir)
names(nir)
set.seed(13)

nir.xyf <- xyf(data = spectra, 
               Y = composition[,2],
               xweight = 0.5, 
               grid = somgrid(6, 6, "hexagonal"))
str(nir.xyf)
               
par(mfrow = c(1,2))
plot(nir.xyf, type = "counts", main = "NIR data: counts")
plot(nir.xyf, type = "quality", main = "NIR data: mapping quality")
