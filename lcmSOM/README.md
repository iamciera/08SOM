README.md
#LCM SOM 

The goal of this is to provide a Self Organizing Map (SOM) of the LCM data to understand gene expression patterns present in the differentially expressed data.  

##Data

1. `normalized_read_count.csv` came from ???


##Analysis

Each analysis that was performed. 

`lcmSOM_analysis1.0a_071014.Rmd` - Testing using only significant genes. There was two ways I looked at this. 1.) Large SOM (6,6), which was a large some that was later callapsed to boader categories and 2.) Small SOM (3,2), which showed tissue specific genes.  *Compare the two lists*

`lcmSOM_analysis1.5a_080414.Rmd` - Same as analysis1, but with tf2. There are overall less genes involved in this analysis.  This gives less genes in the analysis, but tighter PC clustering.  Also there were not tissue specific clusters in the small map (3,2). This tells me that the regions are more similar, possible because of further in differentiation processes. 

`lcmSOM_analysis1b_080514.Rmd` - This is a follow up. Now using the full list of DE genes instead of the WT specific list as was done in Analysis1.0a. 

`lcmSOM_analysis1c_080514.Rmd` - This is looking SOM, not genotype specific, that means there should be two copies of each differentiatlly expressed gene. 

`lcmSOM_analysis1d_080514.Rmd` - This should be the last analaysis of the original SOM.  This analysis is a follow-up to `lcmSOM_analysis1c_080514.Rmd`, where the original scaling will be done specific to genotype.  Scaling does make a difference. Not a huge difference, but this is the more appropriate way to do it, so I am going to do it this way from now on. 

I continued by looking at the difference between all the clusters. Which showed that although the clusters are different, they are essentially the same. 

**This is the analysis that makes the most sense in the SOM.**

`lcmSOM_analysis1.5b_080514.Rmd` - This is a follow up. Now using the full list of DE genes instead of the WT specific list as was done in Analysis1.5b. 

`lcmSOM_analysis2_080414.Rmd` - Testing using all genes. **Not appropriate. Too much noise.**

`lcmSOM_analysis3_072314.Rmd` - Testing only the leaf curated genes. **Not appropriate.  There are not clear clusters.**  It might be nice to overall with the full list of all DE genes. 

`lcmSOM_analysis4_072914.Rmd` - Doing analysis exactly like analysis1, but with top 25% of co-efficent of variation. I also compare the lists of genes, in particular and I find the similarities in the list of genes between the top 25% co-efficient of variation and the list of DE genes from all DE gene expression analysis. 

I also looked at curated gene prescence in PC space.  

*I remade `allGeneListBothGenotypes_analysis5.csv` in analysis5 after this analysis was done.  It shouldnt change the results dramatically.* 

`lcmSOM_analysis5_073114.Rmd` - The start is making a list from all the DE analysis. Then this is SuperSOM attempt one, based off Dan Chitwood's script. 

`lcmSOM_analysis5c_073114.Rmd` - Scaled seperatley by genotype. There is not much difference in the SuperSOM categories if you scale them seperatley and it is most likely the best way to do it, so this is the **Best small  SuperSOM**.

`analysis5d_081814.Rmd` - After viewing the `clusterVis_line()` clusters in `lcmSOM_analysis8_081514.Rmd`, I saw that there were a lot of noise that was associated in these main clusters.  I think if I make more clusters I can begin to see tighter gene expression clusters. **Best large SuperSOM**  

`lcmSOM_analysis6_080114.Rmd` - SuperSOM based on the tutorial- not complete.  The main lesson learned is that the data structure of a superSOM is a list of lists, where you can incorporate many different types of data.  **The way Dan did it is the way the tutorial does it.**

`lcmSOM_analysis7_080414.Rmd` - A closer look at the clusters from basic SOM, using the cluster data from `lcmSOM_analysis1d_080514.Rmd`.  

`lcmSOM_analysis8_081514.Rmd` - A closer look at the clusters from superSOM created from `lcmSOM_analysis5c_073114.Rmd` and `lcmSOM_analysis5c_073114.Rmd`.

`lcmSOM_analysis9_081814.Rmd` - A closer look at the wt cluster SOM from `lcmSOM_analysis1.0a_071014.Rmd` Just to see if I can get some understanding of gene clusters. 







