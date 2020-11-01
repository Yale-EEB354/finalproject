# Phylogenetic Biology - Final Project

## Guidelines - you can delete this section before submission

This repository is a stub for your final project. Fork it, develop your project, and submit it as a pull request. Edit/ delete the text in this readme as needed.

Some guidelines and tips:

- Use the stubs below to write up your final project. Alternatively, if you would like the writeup to be an executable document (with [knitr](http://yihui.name/knitr/), [jupytr](http://jupyter.org/), or other tools), you can create it as a separate file and put a link to it here in the readme.

- For information on formatting text files with markdown, see https://guides.github.com/features/mastering-markdown/ . You can use markdown to include images in this document by linking to files in the repository, eg `![GitHub Logo](/images/logo.png)`.

- The project must be entirely reproducible. In addition to the results, the repository must include all the data (or links to data) and code needed to reproduce the results.

- If you are working with unpublished data that you would prefer not to publicly share at this time, please contact me to discuss options. In most cases, the data can be anonymized in a way that putting them in a public repo does not compromise your other goals.

- Paste references (including urls) into the reference section, and cite them with the general format (Smith at al. 2003).

- Commit and push often as you work.

OK, here we go.

# Comparing Evolution Rates of Protein Quality Control Genes

## Introduction and Goals

The goal of my project is to answer the question, "Do proteases and chaperones evolve at a similar rate?"
This question is prompted by a recent study available on bioRxiv on proteome expansion across the tree of life (Rebeaud et al., 2020). They write extensively about the evolution of chaperones and co-chaperones, but say little about proteases. However, it has been well-catalogued that chaperones and proteases play different (but arguably equally important) roles in maintaining proteostasis in a cell (Gottesman et al., 1997). Furthermore, the network of chaperones and proteases that make up protein quality control (PQC) networks are necessary for cell tolerance of perturbations, and, acting as a mechanism of robustness are thus a driving force of evolution. 

https://www.biorxiv.org/content/10.1101/2020.06.08.140319v2
http://genesdev.cshlp.org/content/11/7/815.full.pdf

The methods I will use to do this are...
I will start by gathering protein sequence data on NCBI. I will find a region within Lon protease that has a high consensus with other microbes. Some of the main proteases essential to E. coli, then expand to other bacteria. 
A protease I will start with is: Lon. 
Then, I will gather protein sequence data on NCBI for some of the chaperones and co-chaperones essential to E. coli, then expand to other microbes.
The chaperone and Co-chaperone I will start with are: GroEL, GroES....

For the minimum viable analysis, I will use the ___________ domain protein sequence from Lon protease to run BLAST and search for homologous regions in other proteases in different bacteria. 
I will upload this data to the Yale computing cluster (Grace), then run IQ-tree to make a phylogenetic tree of the homologous proteases from different bacteria. 

Thus, each edge will represent a specific (homologous) protein region from different bacteria. I will run a bootstrap analysis and label my tree with the bootstrap values. I will also use R to estimate and compare evolutionary rates of time based on the phylogenies I create. 

I might use archaea as an outgroup?

I will be limited by what is publicly available, but I hope to implement the methods I learn in this project on my own sequence data as my thesis progresses. This will ultimately be sequence data from nearshore bacterial communities in the Long Island Sound. 

## Methods

First, I searched for a conserved protein domain family in Lon protease on the National Center for Biotechnology (NCBI) website. I chose the region that had the highest consensus 
The microbes and regions I found were:



The tools I used were... See analysis files at (links to analysis files).

## Results

The tree in Figure 1...

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

