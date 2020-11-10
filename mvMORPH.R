library(mvMORPH)
tree<- read.tree("viburnum_alignment.fasta.treefile")
state<-as.vector(c(rep("H",6),rep("I",6)));names(state)<-tree$tip.label
tree<-make.simmap(tree,state)
plotSimmap(tree)
data=viburnum_traits
data=data[,-1]
mvOU(tree,data)
