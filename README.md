# Phylogenetic Biology - Final Project

# Comparing Evolution Rates of Protein Quality Control Genes

## Introduction and Goals

The goal of my project is to answer the question, "Do proteases and chaperones evolve at a similar rate?"
This question is prompted by a recent study available on bioRxiv on proteome expansion across the tree of life (Rebeaud et al., 2020). They write extensively about the evolution of chaperones and co-chaperones, but say little about proteases. However, it has been well-catalogued that chaperones and proteases play different (but arguably equally important) roles in maintaining proteostasis in a cell (Gottesman et al., 1997). Furthermore, the network of chaperones and proteases that make up protein quality control (PQC) networks are necessary for cell tolerance of perturbations, and, acting as a mechanism of robustness are thus a driving force of evolution. 

https://www.biorxiv.org/content/10.1101/2020.06.08.140319v2
http://genesdev.cshlp.org/content/11/7/815.full.pdf

The methods I will use to do this are...
I will start by gathering protein sequence data on NCBI. I will find a region within Lon protease that has a high consensus with other microbes. 
A protease I will start with is: Lon. 
Then, I will gather protein sequence data on NCBI for a chaperone and co-chaperone.
The chaperone and Co-chaperone I will start with are: GroEL, GroES....

For the minimum viable analysis, I will use the ___________ domain protein sequence from Lon protease to run BLAST and search for homologous regions in other proteases in different bacteria. 
I will upload this data to the Yale computing cluster (Grace), then run IQ-tree to make a phylogenetic tree of the homologous proteases from different bacteria. 

Thus, each edge will represent a specific (homologous) protein region from different bacteria. I will run a bootstrap analysis and label my tree with the bootstrap values. I will also use R to estimate and compare evolutionary rates of time based on the phylogenies I create. 

I will be limited by what is publicly available, but I hope to implement the methods I learn in this project on my own sequence data as my thesis progresses. This will ultimately be sequence data from nearshore bacterial communities in the Long Island Sound. 

## Methods

First, I searched for Lon protease in E coli on NCBI. I selected AAC36871.1 for my query ID and BLASTed it (BLASTP) using the protein database (PDB) for all prokaryotes (taxid 2). 

I selected nine of the most diverse species available from the results and chose the sequences among those species that had the highest coverage from the query.
I downloaded the aligned file in fasta format and updated the header to label Genus_species_SequenceID (lon.renamed.fasta). 
I then uploaded this file to the cluster, as well as two job scripts I had made using MAFFT for alignment and IQtree and analyzation. 

I ran my job scripts, creating an aligned file, then ran IQTREE. 

I created an rmd file and made a phylogenetic tree of my species based on the Lon protease sequences.

THINGS THAT I NEED TO FIX and NEXT STEPS:
My phylogeny doesn't really make sense because I have two E. coli sequences that are mapped sooooo distantly from each other (moreso than everything else). I'm guessing this is an error with a sequence I chose from NCBI (maybe one of them was not truly an E. coli protease sequence, but a sequence from another species that had been transformed into E. coli? I need to take a closer look at these sequences and sequence info on ncbi)

Next, I searched for a GroEL chaperonin on NCBI. I selected WP_000729117.1 for my query ID and BLASTed it (BLASTP) under the same filters as Lon protease: pdb, prokaryotes. 

I also added "filters". My filters were the genus and species names of all bacteria whose sequences I used in my Lon protease analysis. My results yielded sequences for E. coli, Mycobacterium tuberculosis, and Thermus thermophilus. The other species were not found. 

I have six total protein sequences for GroEL, which I aligned and analyzed using MAFFT and IQTREE, with the same job scripts as for Lon protease. 

Next I created two small phylogenetic trees of each of these in Rstudio. I checked to see if the trees were rooted/the same (which I knew they weren't), but this will provide me with useful way to check once I find an appropriate outgroup to add to my trees. This is important so that I can make accurate statements about the divergence rates of chaperones and proteases.

I calculated the edgelengths using phytools and once I properly reroot my trees, I will be able to compare the edgelengths (from root to tip of proteins from the same species) with each other to infer differences in evolution rate. 



## Results

The tree in Figure 1...

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

