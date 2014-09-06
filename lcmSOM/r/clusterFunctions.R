###Cluster Functions 

###Multi-Plot

multiplot <- function(..., plotlist=NULL, file, cols=2, layout=NULL) {
  require(grid)

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  numPlots = length(plots)

  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                    ncol = cols, nrow = ceiling(numPlots/cols))
  }

 if (numPlots==1) {
    print(plots[[1]])

  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}

#clusterVis Function
#displays transformed data in a box plot 

clusterVis <- function(clustNum){
  
  sub_cluster <- subset(data.val2, som$unit.classif==clustNum)
  sub_data <- sub_cluster[,c(1, 8:13)] # just the sample types
  m.data <- melt(sub_data) 
  p <- ggplot(m.data, aes(x=variable, y=value))
  p + geom_point(alpha=0.5,position="jitter", size=1) + 
    geom_boxplot(alpha=0.75, outlier.size=0) + 
    theme_bw()
}

clusterVis2 <- function(clustNum){
  sub_cluster <- subset(data.val2, som$unit.classif==clustNum)
  sub_data <- sub_cluster[,c(1, 8:13)] # just the sample types
  m.data <- melt(sub_data) 
  m.data$region <- ifelse(grepl("wta", m.data$variable, ignore.case = T), "A.tip", 
                         ifelse(grepl("wtc", m.data$variable, ignore.case = T), "B.middle", "C.base"))
  m.data$tissue <- ifelse(grepl("other", m.data$variable, ignore.case = T), "rachis", 
                          ifelse(grepl("mbr", m.data$variable, ignore.case = T), "margin", "base"))
  p <- ggplot(m.data, aes(x=tissue, y=value))
  p + geom_point(alpha=0.5,position="jitter", size=1) + 
    geom_boxplot(alpha=0.70, outlier.size=0) + 
    theme_bw() + facet_grid(region ~ .)
}



###clusterGO()

#Prints out how many genes in cluster and performs GO enrichment. 

#*One thing you can add is if you do slim or regular GO.  Or both.*

clusterGO <- function(clustNum){
  ##Sets up plot
  dev.off()
  plot.new()
  
  #sub_cluster
  sub_cluster <- subset(data.val2, som$unit.classif==clustNum)
  
  itag.sc <- as.data.frame(sub_cluster$gene) 
  colnames(itag.sc)[1] <- "itag"
  itag.sc$sc <- 1    
 
  #Since each orthologue between tf2 and wt are represented twice in this set, we have to keep only the unique ITAGs.
  
  itag.sc <- unique(itag.sc) #Check. Should cut the list in half. # dim(itag.sc) before and after
  
  #Merge all by itag
  matrixGO <- merge(itag.sc, geneLength, by = "itag", all = TRUE)
  matrixGO[is.na(matrixGO)] <- 0
  pat <- matrixGO
  
  #Now that we have the data in the right format, we can proceed with GO enrichment.
  
    genes = as.integer(pat[,"sc"])
    names(genes) = pat$itag
    table(genes)
    length(genes)
  
    pwf = nullp(genes,bias.data=pat$length)
  
    GO.wall = goseq(pwf,gene2cat = cate)
    head(GO.wall)
  
  #This is going to correct for multiple testing.  You can specify the p-value cut-off of GO categories you are interested.
  
    enriched.GO = GO.wall$category[p.adjust(GO.wall$over_represented_pvalue, method = "BH") < 0.05]
  
    enriched.GO
  
    my.GO <- as.character(enriched.GO)
    my.GO.table <- Term(my.GO)
    my.GO.table
    t <- as.matrix(my.GO.table)

    print(t) #prints only GO categories that are significant
}


###clusterVis_PCA
##Highlights the cluster in the PCA map 


clusterVis_PCA <- function(clustNum) {
  
  
  #make dataset for visualization
  data.val3 <- data.val2
  data.val3$cluster[data.val3[,20] == clustNum] <- "subcluster"
  data.val3$cluster[data.val3[,20] != clustNum] <- "other"
  
  #plot

  p <- ggplot(data.val3, aes(PC1, PC2, color = cluster)) 
  p + geom_point(size=I(2), alpha = 0.6) +
    scale_colour_manual(values=c("#cccccc", "#000000")) + 
    theme_bw() + 
    theme(legend.text = element_text(
      size = 16, 
      face = "bold"))
}


###clusterVis_line

clusterVis_line <- function(clustNum) {
  sub_cluster <- subset(data.val2, som$unit.classif==clustNum)
  sub_data <- sub_cluster[,c(1,8:13,22)] # just the sample types
  sub_data <- melt(sub_data)
  head(sub_data)
  sub_data <- within(sub_data, lineGroup <- paste(gene,sep='.'))
  ggplot(sub_data, aes(variable, value, group = lineGroup)) + 
    geom_line(alpha = .1) + 
    geom_point(alpha = .0) +
    theme_bw() 
  #+ facet_grid(.~curated)
  }


#Prereq annotation files for function

annotation1<- read.delim("../../../06diffGeneExp/analysis/data/ITAG2.3_all_Arabidopsis_ITAG_annotations.tsv", header=FALSE)  #Changed to the SGN human readable annotation
colnames(annotation1) <- c("ITAG", "SGN_annotation")
annotation2<- read.delim ("../../../06diffGeneExp/analysis/data/ITAG2.3_all_Arabidopsis_annotated.tsv")
annotation <- merge(annotation1,annotation2, by = "ITAG")
#Only Gene Name and ITAG
annotation <- annotation[,c(1,3,5)]
#fix to one regex
annotation$ITAG <- gsub("^(.*)[.].*", "\\1", annotation$ITAG)
annotation$ITAG <- gsub("^(.*)[.].*", "\\1", annotation$ITAG)

###genesInClust()

#This looks at how many unique genes are in each cluster. 

genesInClust <- function(clustNum, data.val2, annotation) {
  sub_cluster <- subset(data.val2, som$unit.classif==clustNum)
  sub_data <- as.data.frame(sub_cluster[,1])
  colnames(sub_data) <- "ITAG"
  resultsTable <- merge(sub_data,annotation,by = "ITAG", all.x=TRUE)
  head(resultsTable)
  print(nrow(unique(resultsTable)))
  return(unique(resultsTable))
  }


###buildMatrix

#You first need to build a matrix then loop over original values for population of matrix.
#Maybe build function that sets the size of the matrix?

#iterations = 6
#variables = 6
# 
# output <- matrix(ncol=variables, nrow=iterations)
# 
# for (i in 1:clustNum) {
#   subClusterA <- subset(data.val2, som$subClusterA == i)
#   subClusterB <- subClusterA[,c(1,8:13,22)] #select only the columns I need
#     
#       for (k in 1:variables)
#       subClusterB <- subset(data.val2, som$subClusterB == k)
#       
#     output[i,] <- length(intersect(sub_clusterA, sub_clusterB[k]))
#   
# }
