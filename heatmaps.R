getwd()
setwd("C:/Users/DELL/Desktop/Graphs")
getwd()
genes = read.csv('heatmap_CWDEs_chitin.csv')

colnames(genes)
row.names(genes) = genes$ID
unique(genes$ID)
row.names(genes)
genes$ID<-NULL
colnames(genes)
data1 = genes['FC']
data1
genes$FC = NULL
genes
colnames(genes)

library(pheatmap)
library(ComplexHeatmap)
small_m = as.matrix(genes)
small_m1 = as.matrix(data1)


library(RColorBrewer)
heatmap1 = pheatmap(small_m,
                    cluster_rows = FALSE, cluster_cols = FALSE,
                    border_color = "white",
                    display_numbers = F,
                    cellwidth = 40, cellheight = 20
                    
)

heatmap1
heatmap2 = pheatmap(small_m1,
                    cluster_rows = FALSE,
                    cluster_cols = FALSE, 
                    color = hcl.colors(100, "BluYl"),
                    border_color = "white",
                    display_numbers = F,
                    cellwidth = 20, cellheight = 20)
heatmap1
heatmap2

heatmap1+heatmap2


