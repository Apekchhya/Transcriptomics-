getwd()
setwd("C://Users//DELL//Desktop//GO")
library(clusterProfiler)
library(dplyr)
library(tidyr)
library(stringr)

#dfff = read.csv("GOO.csv")
head(dfff)
#gene_go_final <- dfff %>%
  mutate(GO = strsplit(as.character(GO), ";;")) %>%
  unnest(GO)
head(gene_go_final)
#write.csv(gene_go_final, "final_GO2.csv")
my_data = read.csv('final_GO2.csv')
head(my_data,50)
my_data$Term
term2gene <- my_data[c('Term', 'ID')]
term2name <- my_data[c('Term', 'Name')]
term2fun <-my_data[c('Term', 'Fun')]
unique(term2name$Term)
head(term2name)
length(term2name$Term)
unique_terms_df <- term2name[!duplicated(term2name$Term), ]
unique_termsfun_df <- term2fun[!duplicated(term2fun$Term), ]
length(unique_terms_df$Term)
write.csv(unique_termsfun_df, "Term2Fun.csv")
gene = read.csv("up.csv")
is.data.frame(gene)
gene = gene$ID
is.vector(gene)
help(enricher)
x = enricher(gene, 
             pvalueCutoff = 1,
             qvalueCutoff = 1,
             TERM2GENE=term2gene,
             TERM2NAME=unique_terms_df,
             minGSSize = 2,
             maxGSSize = 500,
             pAdjustMethod = "BH",
            )
final = data.frame(x)
write.csv(df, file = "up_go_enrich.csv", row.names = FALSE)
final$BgRatio.dtype

convert_fraction <- function(fraction) {
  parts <- strsplit(fraction, "/")[[1]]
  numerator <- as.numeric(parts[1])
  denominator <- as.numeric(parts[2])
  return(numerator / denominator)
}
  
df <- final %>%
  mutate(BgRatio = sapply(BgRatio, convert_fraction))
df <- df %>%
  mutate(GeneRatio = sapply(GeneRatio, convert_fraction))

# Print the updated dataframe
print(df.head())
head(df)
