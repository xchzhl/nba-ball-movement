library(igraph)
library(sna)

data=read.csv('G3 Celtics.csv',header=TRUE,row.names=1,check.names=FALSE)
a=as.matrix(data) # coerces the data set as a matrix
m <- t(a)
g=graph.adjacency(m,mode="directed",weighted=TRUE) # this will create an 'igraph object'
flowbet(m)

plot.igraph(g,vertex.label=V(g)$name,layout=layout.fruchterman.reingold, 
edge.color = "grey75",edge.width=E(g)$weight)

write.graph(graph = g, file = "G3-BOS.gml", format = "gml")
