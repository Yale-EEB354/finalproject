# Phylogenetic Biology - Final Project

## Guidelines - you can delete this section before submission

This is a stub for your final project. Edit/ delete the text in this readme as needed.

There are two ways you can use this document:  
- You can download this file to a folder on your computer, edit this document and add other files (data, code, etc), and then zip up and submit the folder on canvas.
- You can for the [repository](finalproject) containing this document on gitub. Then commit and push your canges to the repository, and submit a link to the repository on canvas.

Github is a great way to work on projects, but also has a steep initial learning curve.


Some guidelines and tips:

- Use the stubs below to write up your final project. Alternatively, if you would like the writeup to be an executable document (with [knitr](http://yihui.name/knitr/), [jupytr](http://jupyter.org/), or other tools), you can create it as a separate file and put a link to it here in the readme.

- For information on formatting text files with markdown, see https://guides.github.com/features/mastering-markdown/ . You can use markdown to include images in this document by linking to files in the repository, eg `![GitHub Logo](/images/logo.png)`.

- The project must be entirely reproducible. In addition to the results, the repository must include all the data (or links to data) and code needed to reproduce the results.

- If you are working with unpublished data that you would prefer not to publicly share at this time, please contact me to discuss options. In most cases, the data can be anonymized in a way that putting them in a public repo does not compromise your other goals.

- Paste references (including urls) into the reference section, and cite them with the general format (Smith at al. 2003).

OK, here we go.

# Plethodontidae Forelimb Morphology

## Introduction and Goals

For my final project, I plan to focus on salamanders in the family Plethodontidae. This family exhibits two feeding types, both of which involve tongue projection: muscle-powered feeding and spring-powered feeding. Spring-powered tongue projection, which relies on stored elastic energy, is comparatively more forceful than muscle-powered feeding (Scales 2020). In addition to these two feeding classes, some salamanders perform a forward lunge in tandem with tongue projection (Wake & Deban 2000). It is hypothesized that this forward lunge may provide additional power or accuracy to tongue projection, but this has not yet been confirmed.

I spent the summer working in the Peabody Collections studying preserved salamander specimens. My research was focused on salamander forelimb architecture. I predicted that muscle-powered feeders may have forelimb structure that is better-optimized for forward lunges. In this sense, the forward lunge may be a compensatory mechanism for less powerful feeders. 

To visualize differences in forelimb skeletal structure, I segmented ~25 different taxa within the family. Specifically, I focused on the scapula, humerus, radius, and ulna. To quantify differences in trait values, I plan to use a geometric morphometrics program developed by Dr. Zachary Morris. Therefore, I will be using my own data.

The goal of my project is to determine how forelimb morphology has evolved in Plethodontidae salamanders. Because I plan to use geometric morphometrics, I think it makes sense to build a separate tree based on each morphological data point. Ideally, I could then combine these trees into a maximum likelihood tree that would capture the continuous transition between morphological characters as a whole. We haven't learned much yet about mapping continuous traits onto trees, so I hope to use methods discussed in chapter 8 to execute this plan.

Ultimately, I would like to compare the evolutionary transition of forelimb morphology to the appearance of spring-powered or muscle-powered feeding. With this comparison, it may become evident if natural selection is acting on optimized forelimb morphology for muscle-powered feeders, making the weakest feeders the best lungers.

This is part of a larger project that I plan to present at SICB 2023.

## Methods

The tools I used were... See analysis files at (links to analysis files).

## Results

The tree in Figure 1...

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

Scales, J., Bloom, S.V., & Deban, S.M. (2020). Convergently evolved muscle architecture enables high-performance ballistic movement in salamanders. J. Morphol. 281: 196-212. https://onlinelibrary.wiley.com/doi/am-pdf/10.1002/jmor.21091

Wake, D. & Deban, S.M. (2000). Terrestrial Feeding in Salamanders. FEEDING (pp. 95-116). https://www.researchgate.net/publication/258324922_Terrestrial_Feeding_in_Salamanders
