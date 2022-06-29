# Prokaryotic_pathways
R code to extract KEGG pathways numbers present in prokaryotes, and therefore exclude those from Eukaryotes.

Even if you use Prokaryotic profiles when scanning for KO orthologs in your list amminoacid sequences, different KOs can belong to different pathways.
It can be useful to get rid of eukaryotic related pathways before doing further anlyses. 

This simple R script scans and collapse all pathways detected in prokaryotes, excluding therefore those only detected in eukaryotes.
It needs the R package "KEGGREST" to run.


