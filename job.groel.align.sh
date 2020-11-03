#!/bin/bash

#SBATCH --job-name=groel_align
#SBATCH --time=30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8

module load MAFFT/7.429-foss-2018b-with-extensions

mafft groel.renamed.fasta > groel.aligned.fasta
