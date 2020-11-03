# Phylogenetic Biology - Final Project

# Comparative Phylogeny of Viburnum

## Introduction and Goals
My project is interested in determining if there are differenes in the rate of evolution across the Viburnum phylogeny related to different leaf anatomy and habitat. Viburnum has ancestral H palisade cells which appear with additional arms that increase the surface area. I cells, the traditional columnar palisade cell, have evolved more than once apparently to respond to more direct light. H cells and I cells represent two specific strategies that Viburnum has adopted for light scavening with effects on the overall fitness of the plant. Previous phylogenies of Viburnum have already shown that the lineage has a history of moving out of biomes with biome-specific traits following the transition (Landis et al, 2020). Rates of molecular evolution have been attempted to be linked to life history strategies, but there has not been a consensus (Smith and Donoghue, 2008). Slower carbon accumulation in shade could result in longer generation times and slower relative rates of evolution compared to sun adapted species. 

Working alongside Aleca, I plan to construct an initial maximum liklihood phylogeny using the RADSeq data from the Landis et al project overlayed with H and I cell information. Aleca will be working to determine the phylogenetic independent contrasts for Viburnum, which I plan to help with. Following this, I will use the liklihood approach described Adams to compare the rate of evolutionary change for phenotypic traits. I think this method would also allow me to compare whether there are differential rates of evolution between sun and shade habitats. I would also like to explore how different molecular clocks can impact branch lengths of the phylogeny. To determine this, I would clamp internal nodes to fossil dates, geological events such as Laurasia, and substitution rates and compare the results using a distance measure. 

H and I cell data has been collected by Aleca and other members of the Brodersen lab. RADSeq data is available on Dryad.

## Methods
Bayesian Tree Analysis: Using the mcmc_GTR.Rev script, a Bayesian tree was produced from the 173 species and 10 gene matrices. Data was stored in nexus file types, which require additional work to remove individual genes from. The script was based on Michael Landis' mol_model.Rev script uploaded in a slightly edited form here. One of the other attempts is also saved in a seperate .rev file.  

Maximum Likelihood Tree: Using the ITS gene from the Viburnum data (saved as a seperate fasta file), a ML and IQTree were produced. These follow the most simplistic GTR script.

Comparative Trait Evolution: Two seperate R files are uploaded here as saved attempts, both are based on Dean Adam's R scripts attempting to determine covariance of traits through time. Trait_evolution.r is the older attempt, and trait_covariance is the newer. They use the two excel files with randomized data within ceratin distributions to represent vein density, vein width, cell volume, and cell surface area. These were used in combination with the ML tree to find the Phylogenetic least squares and plot variation of trait evolution thorugh tree space.

## Results

## Discussion

## References
https://watermark.silverchair.com/syaa027.pdf?token=AQECAHi208BE49Ooan9kkhW_Ercy7Dm3ZL_9Cf3qfKAc485ysgAAAs4wggLKBgkqhkiG9w0BBwagggK7MIICtwIBADCCArAGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMy5MU2_YLRb5K7N1XAgEQgIICgdoyLP4FxQbYNkeklQqAAgQibuP_9KGLScloBYlFURAPDBwhe1LSeznDcNjcpFGPxH-jdckIy3u0udXqaqbzLzxaSY7HsZdOTG7G2guaxeePv9xM0EeZiAUOQEuIABQCQvroSWOj_jhZD_qSFv69bIuF9aYC75CBM9roSfvNuhUZ49OjDrwEIZblV69pTpeYQiPitUDQQKieqmpXIBzIvOMWitwODLJfJ7HfchP9viEbOvLwM3sVML1U2ggQ30EokJ9XtbB42I5aXiaaq_9raDhiWLOTqv9lN1-70gtjjRZ2KgTQEcfp58bAxwYGjQKBCXuZiwj1NKkN18ihGAn5BkAzxv7olpx_VgzRlvBbWSwEzBGcsfwxlPYou1SQ2jjXrKlG2wqjxLakkS5nTgg4wQk1WW4lsz74W3Ny9ZQzhgBnikiQTp1WeyhkSfLv5P9UmWn3yhwy5RxaF09R42_J1OaSjdu7uwOFKIDSb4xSNMTHiAQcTKcL9ztDo_TLZ5_kGgFgGxDMfV3ZmelKv0_tV3yDaKzzjX25NnBzlIh_QI7iAblK7kyykgQhP-ACyItJooQqbsKq132uW3yNeL3zGcm6eDjhlYPR9c3InNnNqm2NS_LVqecjuvX2Stt4GKpPXoqDTrc1RkPqHb28GXXjFswZg1Fe_2kXEhrxFruOmqwLnlGZ-MvAfQQYiv0a3o3ZB6ifwEFu5SZTvtR9Ixz5a0XOnpWjQSmP14O04aqFQFKK7TQ5EjWV41kxSGJrHV1goGGfTDHgGfI1eHsHJoyICiYUZo_1kyrp0CEYK85tK4fH9HbdeWr3oGpuxrZvC-SIl0X1o3jhunQTQN2x_NSLwugm
https://academic.oup.com/sysbio/article/62/2/181/1667814
https://science.sciencemag.org/content/322/5898/86.full
