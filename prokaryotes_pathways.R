library(KEGGREST)
org <- data.frame(keggList("organism"))
prokaryotes = org[grep("Prokaryotes", org$phylogeny), ]
pathways_tot = vector()
for (i in 1:length(prokaryotes$organism))
{
  try({
    pathways = keggLink("pathway", prokaryotes[i,2])
    pathways = sub(paste(".*",prokaryotes[i,2], sep = ""), "", pathways)  
    pathways = unique(pathways)
    pathways_tot = append(pathways_tot,pathways)
    pathways_tot = unique(pathways_tot) })
}
pathways_tot
#write.table(pathways_tot, "pathways_prok.txt")

