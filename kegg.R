getwd()
setwd("C:\\Users\\DELL\\Desktop\\New_Graphs")
data = read.csv("Keggdown.csv")
data_up = read.csv("Keggup.csv")
data_up
library(ggplot2)
library(forcats)


# Define a custom color gradient similar to the provided image
color_palette <- c("#c55663", "#48b5ca", "#85ae32", "#036eb8")

plot_down = ggplot(data, aes(x = enrich_factor, y = fct_reorder(Pathway, qvalue, .desc = TRUE), fill = qvalue, size = gene_number)) +
  geom_point(stat = "identity",shape = 25) +
  labs(fill = NULL) +
  theme_light() +
  scale_fill_gradientn(colors= color_palette) +
  theme_bw() +
  scale_size_continuous(range = c(1, 4)) + 
  labs( 
    y = "Pathways",
    x = "Rich Factor")+ 
  theme(
    legend.text = element_text(face = "bold", size = 10, family = "serif"),
    #panel.grid.major = element_blank(),
    #panel.grid.minor = element_blank(),
    axis.title.x = element_text(face = "bold", size = 12, family = "serif"),
    axis.title.y = element_text(face = "bold", size = 12, family = "serif", vjust = 3),
    axis.text.x = element_text(face = "bold", color = "black", size = 10, family = "serif"),
    axis.text.y = element_text(face = "bold", color = "black", size = 10, family = "serif")
  )

plot_down

ggsave(
  filename = "keggdown_plot.jpeg",    # File name
  plot = plot_down,                  # Plot object
  width =7.5,                   # Width in inches
  height = 5,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)


plot_up = ggplot(data_up, aes(x = enrich_factor, y = fct_reorder(Pathway, qvalue, .desc = TRUE), fill = qvalue, size = gene_number)) +
  geom_point(stat = "identity",shape = 24) +
  labs(fill = NULL) +
  theme_light() +
  scale_fill_gradientn(colors= color_palette) +
  theme_bw() +
  scale_size_continuous(range = c(1, 4)) + 
  labs( 
    y = "Pathways",
    x = "Rich Factor")+ 
  theme(
    legend.text = element_text(face = "bold", size = 10, family = "serif"),
    #panel.grid.major = element_blank(),
    #panel.grid.minor = element_blank(),
    axis.title.x = element_text(face = "bold", size = 12, family = "serif"),
    axis.title.y = element_text(face = "bold", size = 12, family = "serif", vjust = 3),
    axis.text.x = element_text(face = "bold", color = "black", size = 10, family = "serif"),
    axis.text.y = element_text(face = "bold", color = "black", size = 10, family = "serif")
  )

plot_up


