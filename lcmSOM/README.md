README.md
#LCM SOM 

The goal of this is to provide a Self Organizing Map (SOM) of the LCM data to understand gene expression patterns present in the differentially expressed data.  

##Data

1. `normalized_read_count.csv` came from ???

##Analysis

`lcmSOM_analysis1_071014.Rmd` - Testing using only significant genes. There was two ways I looked at this. 1.) Large SOM (6,6), which was a large some that was later callapsed to boader categories and 2.) Small SOM (3,2), which showed tissue specific genes. 

`lcmSOM_analysis1b_GO_071014.Rmd` - GO enrichment on the smaller of analysis 1.

`lcmSOM_analysis2_072214.Rmd` - Testing using all genes. 

`lcmSOM_analysis3_072314.Rmd` - Testing only the curated genes.

`lcmSOM_analysis4_072914.Rmd` - Doing analysis exactly like analysis1, but with top 25% of co-efficent of variation. *unfinished*

`lcmSOM_analysis5_073114.Rmd` -



