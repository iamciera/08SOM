Patterns of Gene Expression in Early Developing Complex Leaves
========================================================
author: Ciera Martinez
date: October 18, 2014
font-family: 'Baskerville'
css:cieraSlides.css

Background
========================================================
title: FALSE

</br></br>
![cell differentiation](images/img7.png)


Background
========================================================
title: False

</br></br>
![cell differentiation](images/img4.png)

Background
========================================================
left: 60%
title: false

![cell differentiation](images/img6.png)

***

**Pattern 1**: Tip to base wave of differentiation.  
Cell differentation occurring first at the tip.

**Pattern 2**: Midrib to Marginal  blastozone or marginal meristem  
(defined histologically as having dense cells and 
maintenance of high rates of cell division)


Main Question
========================================================
</br></br>
What are the genes expression trends observed in early complex leaf 
development that would explain differentiation patterning in the leaf?


Approach 
========================================================
left: 60%

![cell differentiation](images/img15.png)
***
Isolate tissue 

**1**. longitudinal 
axis (tip, mid, base)

**2**. margins compared with all other tissue 
(rachis  and midvein) regions, to perform gene expression analysis.



Laser Capture Microdissection
========================================================

<video width="1000" controls="controls">
<source src="movies/LCMmovie.m4v" type="video/mp4">
</video>

DE & GO enrichment
========================================================

![cell differentiation](images/img16.png)

DE & GO enrichment
========================================================

<center>![cell differentiation](images/img18.png)</center>

***

</br></br>
**Conclusion**

The regions further along in development
 will have up-regulation of GO categories 
 associated with differentiated tissue. 

Photosynthetic Activity
========================================================

<center>![cell differentiation](images/img19.png)</center>

Photosynthetic Activity
========================================================
left: 30%

<center>![cell differentiation](images/img20.png)</center>

***

It is unknown when and where photosynthetic activity is first evident in early developing leaves.


Photosynthetic Activity
========================================================
left: 30%

<center>![cell differentiation](images/img20.png)</center>

***

**Approach**: Chlorophyll a/b binding protein (CAB)::GUS  
localization reflects photosynthetic activity.

Photosynthetic Activity
========================================================
left: 30%

<center>![cell differentiation](images/img21.png)</center>

***

**Approach**: Chlorophyll a/b binding protein (CAB)::GUS  
localization reflects photosynthetic activity.

Ubiquitous in mature leaves.  

Photosynthetic Activity
========================================================
left: 30%

<center>![cell differentiation](images/img21.png)</center>

***

**Approach**: Chlorophyll a/b binding protein (CAB)::GUS  
localization reflects photosynthetic activity.

Ubiquitous in mature leaves. 

Where does CAB localize early in leaf development?

Photosynthetic Activity
========================================================

<center>![cell differentiation](images/img22.png)</center>

Photosynthetic Activity
========================================================
</br>
**Conclusions 1**: Early in leaf development (P4 & P5), the rachis 
and midviein show CAB activity, suggesting these regions are
first to start specialized processes such as photosynthesis. 

**Conclustion 2**: The LCM approach for determining gene expression 
patterns is capable of predicting verifiable expression patterns.

Co-expression Analysis 
========================================================

<center>![cell differentiation](images/img23.png)</center>

***

**Question 1**: Does clustering give similar GO enrichment 
results  to DE analysis?

**Question 2**: Are there patterns of gene expression that 
explain margin/rachis identity?

**Question 3**:  Can we get to smaller subset of genes that 
may explain differentiation patterning during leaf development?

Principle Component Analysis
========================================================
left: 50%

![plot of chunk unnamed-chunk-2](101914plantbioretreat-figure/unnamed-chunk-2.png) 

PC1 (29.2%)  

PC2 (20.8%) 
***
![plot of chunk unnamed-chunk-3](101914plantbioretreat-figure/unnamed-chunk-3.png) 
</br>
PC3 (20.3%) 

PC4 (15.6%)

Self Organizing Maps  
========================================================

</br></br> 
Group genes with similar expression patterns to clusters 
or nodes. 

***

</br></br> 
Explain what SOM better. 

Self Organizing Maps: Limit to six clusters
========================================================

![map](images/img9.png)

***

![plot of chunk unnamed-chunk-4](101914plantbioretreat-figure/unnamed-chunk-4.png) 

Clusters help define PCA clustering
========================================================

![plot of chunk unnamed-chunk-5](101914plantbioretreat-figure/unnamed-chunk-5.png) 

***
![plot of chunk unnamed-chunk-6](101914plantbioretreat-figure/unnamed-chunk-6.png) 

=================================

</br></br>
</br></br>
**Question 1**: What genes define these clusters? Does clustering give similar GO enrichment results to DE analysis?

Cluster 2 
========================================================

![plot of chunk unnamed-chunk-7](101914plantbioretreat-figure/unnamed-chunk-7.png) 

Cluster 2 - Genes that are up-regulated in top rachis
========================================================
![plot of chunk unnamed-chunk-8](101914plantbioretreat-figure/unnamed-chunk-8.png) 

***

![aother](images/img10.png)

Cluster 2 - Photosynthetic GO categories
========================================================
![aother](images/img10.png)

***


**Question 1**: Does clustering give similar GO enrichment 
results to DE analysis?

Yes. Recapitulates DE expression patterns in tissue 
specific regions.

**GO Categories**
- heme binding                   
- oxygen binding                  
- photosynthesis, light harvesting
- apoptotic process  




========================================================

<center>![cell differentiation](images/img23.png)</center>

***
</br></br>

**Question 2:** What are the specifc genes that contribute to marginal idenity?

**Approach:** Make a larger self organizing map allowing clusters that can specify regulated genes across multiple tissue types. 

Self Organizing Maps - Allow 36 clusters
========================================================
left: 60%
![plot of chunk unnamed-chunk-9](101914plantbioretreat-figure/unnamed-chunk-9.png) 

***

![map](images/img9.png)

Cluster 17 Up-regulated in rachis compared to margin 
========================================================
left: 30%

![map](images/img23.png)

***

![plot of chunk unnamed-chunk-10](101914plantbioretreat-figure/unnamed-chunk-10.png) 
 

Cluster 17: Growth Genes
========================================================
left: 80%

<small>Auxin Response 6 - auxin response via expression of auxin regulated genes

gibberellin 2-oxidase - responsive to cytokinin and KNOX activities

ARGONAUTE7 - required for mediolateral expansion in maize (Douglas et al, 2010)

REDUCED STEM BRANCHING 6 - MADS-box transcription factor, mutant flower margins expanded (TAIR mutant lines)

AP2/B3 domain transcription factor - may function as a negative growth regulator

R2R3-MYB TF factor gene -  MYB gene involved in cell fate idenity & Lateral Meristem Initiation (Muller et al., 2005)

EMBRYO DEFECTIVE - mutant with enlarged SAM (Cushing et al. 2005)</small>

Cluster 35
========================================================
left: 30%

![map](images/img23.png)

***

![plot of chunk unnamed-chunk-11](101914plantbioretreat-figure/unnamed-chunk-11.png) 

Cluster 35 - Photosynthesis and Vascular Differentiation
========================================================
<small>**Solyc00g277510** - Encodes chlorophyll binding protein D1, a part of the photosystem II reaction center core

**Solyc02g071000** - Subunit of light-harvesting complex II (LHCII),which absorbs light and transfers energy to the photosynthetic reaction center.

**Solyc05g013570** - phototropic-responsive NPH3 family protein

**Solyc05g041230** - chloroplast gene encoding a CP43 subunit of  the photosystem II reaction center.

**Solyc08g066500** - Member of the class III HD-ZIP protein family. Critical for vascular development.

**Solyc08g067330** - Encodes lhcb1.1 a component of the LHCIIb light harvesting complex associated with photosystem II.</small>

Further investigation using mutant with accelerated cellular differentiation
========================================================

The trifoliate mutant is unable to make leaflets in rachis.
========================================================

<center>![trifoliate](images/img24.png)</center>
*trifoliate* mutant is unable to make leaflets in response to exogenous
auxin applications, indicating lack of competence in the 
primordium.


Basic Vs. Super Self Organized Maps
========================================================
</br></br>
![SOMdiagram](images/img13.png)

Basic SOM Small - Rachis & Tip up-regulated genes
========================================================
left:30%


![aother](images/img10.png)
***

![plot of chunk unnamed-chunk-13](101914plantbioretreat-figure/unnamed-chunk-13.png) 


Basic Organized Maps
========================================================
![plot of chunk unnamed-chunk-14](101914plantbioretreat-figure/unnamed-chunk-14.png) 

***

- GO enrichment reflects previous DE expression: in this case photosythetic enriched.
- We can go further by looking into what sorts of genes are similar & different between the groups, to try to understand further how these genotypes are differently regulated. 

Basic Organized Maps
========================================================
![plot of chunk unnamed-chunk-15](101914plantbioretreat-figure/unnamed-chunk-15.png) 

***

- GO enrichment reflects previous DE expression: in this case photosythetic enriched.
- We can go further by looking into what sorts of genes are similar & different between the groups, to try to understand further how these genotypes are differently regulated. 

Basic Organized Maps - Margin at Base 
========================================================
left:30%

![aother](images/img14.png)
***
![plot of chunk unnamed-chunk-16](101914plantbioretreat-figure/unnamed-chunk-16.png) 

Basic Organized Maps - Margin at Base 
========================================================
left:30%

![aother](images/img14.png)
***
- GO sequence-specific DNA binding transcription factor activity & transcription factor complex

- *tf2* specific includes developmental genes YABBY, KNAT6, ARF8, SCARECROW

- WT specific includes NAC transcription factor

**Still too many genes!**

Future : Need to look at larger SOMs for more refined co-expression patterns. 

Super Self Organized Maps (superSOM)
========================================================

![somDiagram](images/img13.png)

Super SOM: clusters have dimensionality and a separate 
identity associated with genotype data set, but ultimately, 
data must be assigned to the same cluster.

Super Organized Maps
========================================================

![somDiagram](images/img13.png)



SuperSOM - Cluster 12
========================================================

![plot of chunk unnamed-chunk-18](101914plantbioretreat-figure/unnamed-chunk-18.png) 

***

![plot of chunk unnamed-chunk-19](101914plantbioretreat-figure/unnamed-chunk-19.png) 

SuperSOM - Cluster 12
========================================================

![plot of chunk unnamed-chunk-20](101914plantbioretreat-figure/unnamed-chunk-20.png) 

***

![plot of chunk unnamed-chunk-21](101914plantbioretreat-figure/unnamed-chunk-21.png) 

SuperSOM - Cluster 12
========================================================

<H3>Auxin Regulation and Transport</H3>

**Solyc12g006340.1.1 (ARF8)**:Encodes a member of the auxin response factor family.

**Solyc10g076790.1.1 (AUX1)**:  Encodes an auxin influx transporter.

**Solyc03g118740.2.1 (PIN1)**: Auxin efflux.

SuperSOM - Cluster 12
========================================================

<H3>Developmental Transciption Factors</H3>

**Solyc09g065820.2.1**:  DNA binding / transcription factor; cell differentiation.

**Solyc09g010780.2.1**:  Involved in leaf development. Knockout mutants have abnormally shaped leaves.

**Solyc02g080260.2.1**: Encodes a homeodomain protein that is expressed in the LI layer of the vegetative

**Solyc07g018290.2.1 (PLETHERA 1)**: expressed in young tissues and may specify meristematic or division-competent states. (Wilson et al., 2005).

**Solyc06g075850.1.1**: Histone H4 : cytochrome P450 monooxygenase. Expressed in cotyledons and leaves

**Solyc04g009950.2.1**: R2R3- type MYB- encoding genes

SuperSOM - Cluster 28
========================================================

![plot of chunk unnamed-chunk-22](101914plantbioretreat-figure/unnamed-chunk-22.png) 

SuperSOM - Cluster 28
========================================================

![plot of chunk unnamed-chunk-23](101914plantbioretreat-figure/unnamed-chunk-23.png) 

***

![plot of chunk unnamed-chunk-24](101914plantbioretreat-figure/unnamed-chunk-24.png) 

Conclusions
========================================================
1. 


Future
========================================================

- Look into SOMs a closer, identify possible canidates for 
functional work

- Network analysis to identify major hubs of developmental 
patterning
