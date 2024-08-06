getwd()
setwd("C:\\Users\\DELL\\Desktop\\New_Graphs")
#............................................................................
df_chitin1 <- data.frame(
  Name = c("Vd592", "\u0394VdPT1-1", "\u0394VdPT1-2", "\u0394VdPT1-C"),
  Mean = c(610.00, 294.33, 285.33, 606.00),
  SD = c(34.64, 12.90, 12.86, 35.54),
  letter = c("a","b","b","a")
)
library(ggplot2)
plot_chitin1 = ggplot(df_chitin1, aes(x = Name, y = Mean, fill = Name)) +
  geom_bar(stat = "identity", width = 0.5) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), width = 0.1) +
  theme_bw()+
  theme(legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold",angle = 45,hjust = 1,color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  labs(
       y = " Chitin content in \u00B5g/0.01gdw ") +
  coord_cartesian(ylim = c(0,720)) +scale_y_continuous(
    expand = c(0,0),breaks = c(seq(0, 700, by = 200)))+
  geom_text(aes(y =  Mean + SD + 12, label = letter),size =4, vjust = 0)

ggsave(
  filename = "plot_chitin_cellophane.jpeg",    # File name
  plot = plot_chitin1,                  # Plot object
  width = 3,                   # Width in inches
  height = 3,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)
#.........................................................................................
df_beta1 <- data.frame(
  Name = c("Vd592", "\u0394VdPT1-1", "\u0394VdPT1-2", "\u0394VdPT1-C"),
  Mean =  c(193.67, 213.67, 211.33, 192.67),
  SD = c(3.21, 3.21, 2.08, 4.93),
  letter = c("b","a","a","b")
)

plot_beta1 = ggplot(df_beta1, aes(x = Name, y = Mean, fill = Name)) +
  geom_bar(stat = "identity", width = 0.5) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), width = 0.1) +
  theme_bw()+
  theme(legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold",angle = 45,hjust = 1, color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  labs(
    y = " \u03B2-glucan content in \u00B5g/0.01gdw ") +
  coord_cartesian(ylim = c(0,255)) +scale_y_continuous(
    expand = c(0,0),breaks = c(seq(0, 250, by = 50)))+
  geom_text(aes(y =  Mean + SD + 6, label = letter),size =4, vjust = 0)

ggsave(
  filename = "plot_beta_cellophane.jpeg",    # File name
  plot = plot_beta1,                  # Plot object
  width = 3,                   # Width in inches
  height = 3,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)
#...................................................................................................................

df_chitin2 <- data.frame(
  Name = c("Vd592", "\u0394VdPT1-1", "\u0394VdPT1-2", "\u0394VdPT1-C"),
  Mean =  c(744.67, 639.67, 642.67, 738.33),
  SD = c(14.50, 17.04, 21.94, 12.58),
  letter = c("a","b","b","a")
)

plot_chitin2 = ggplot(df_chitin2, aes(x = Name, y = Mean, fill = Name)) +
  geom_bar(stat = "identity", width = 0.5) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), width = 0.1) +
  theme_bw()+
  theme(legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold",angle = 45,hjust = 1, color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  labs(
    y = " Chitin content in \u00B5g/0.01gdw ") +
  coord_cartesian(ylim = c(0,850)) +scale_y_continuous(
    expand = c(0,0),breaks = c(seq(0, 800, by = 200)))+
  geom_text(aes(y =  Mean + SD + 15, label = letter),size =4, vjust = 0)

ggsave(
  filename = "plot_chitin_cm.jpeg",    # File name
  plot = plot_chitin2,                  # Plot object
  width = 3,                   # Width in inches
  height = 3,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)
#.................................................................................................

df_beta2 <- data.frame(
  Name = c("Vd592", "\u0394VdPT1-1", "\u0394VdPT1-2", "\u0394VdPT1-C"),
  Mean =  c(2031.00, 2210.00, 2201.67, 1984.67),
  SD = c(29.61, 35.00, 40.10, 73.38),
  letter = c("b","a","a","b")
)

plot_beta2 = ggplot(df_beta2, aes(x = Name, y = Mean, fill = Name)) +
  geom_bar(stat = "identity", width = 0.5) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean + SD), width = 0.1) +
  theme_bw()+
  theme(legend.position = "none",
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold",angle = 45,hjust = 1, color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  labs(
    y = " \u03B2-glucan content in \u00B5g/0.01gdw ") +
  coord_cartesian(ylim = c(0,2600)) +scale_y_continuous(
    expand = c(0,0),breaks = c(seq(0, 2500, by = 500)))+
  geom_text(aes(y =  Mean + SD + 55, label = letter),size =4, vjust = 0)

ggsave(
  filename = "plot_beta_cm.jpeg",    # File name
  plot = plot_beta2,                  # Plot object
  width = 3,                   # Width in inches
  height = 3,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)
#.....................................................................................

# Load necessary library
library(ggplot2)

custom_labels <- c(expression(bold("Vd592")), 
                   expression(bold("Δ")~bolditalic("VdPT1-1")), 
                   expression(bold(Δ)~bolditalic("VdPT1-2")), 
                   expression(bold(Δ)~bolditalic("VdPT1-C")))

# Create the data frame
data_carbon <- data.frame(
  strain = factor(c("Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
                    "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
                    "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
                    "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
                    "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
                    "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
                    "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C")),
  source = factor(c("CK", "CK", "CK", "CK",
                    "Cellulose", "Cellulose", "Cellulose", "Cellulose",
                    "D-Xylose", "D-Xylose", "D-Xylose", "D-Xylose",
                    "Glucose", "Glucose", "Glucose", "Glucose",
                    "Mannose", "Mannose", "Mannose", "Mannose",
                    "Pectin", "Pectin", "Pectin", "Pectin",
                    "Starch", "Starch", "Starch", "Starch")),
  Mean = c(5.53, 5.47, 5.45, 5.5,
           5.1, 5.376666667, 5.35, 4.99,
           4.0, 4.453, 4.43, 3.99,
           4.1, 4.966666667, 4.923333333, 4.15,
           4.899, 5.083333333, 5.066666667, 4.9,
           5.483333333, 5.883333333, 5.863333333, 5.453333333,
           5.35, 5.613333333, 5.593333333, 5.343333333),
  SD = c(0.08660254, 0.069282032, 0.075055535, 0.098149546,
         0.1, 0.075055535, 0.06244998, 0.115325626,
         0.07, 0.043588989, 0.032145503, 0.06,
         0.062, 0.057735027, 0.068068593, 0.066583281,
         0.152752523, 0.144337567, 0.115470054, 0.076376262,
         0.1040833, 0.1106044, 0.118462371, 0.110151411,
         0.132287566, 0.077674535, 0.070945989, 0.125033329),
  letter = factor(c("a", "a", "a", "a",
                    "b","a","a","b",
                    "b","a","a","b",
                    "b","a","a","b",
                    "a", "a", "a", "a",
                    "b","a","a","b",
                    "b","a","a","b"))
)

plot_carbon = ggplot(data_carbon, aes(x = source, y = Mean, fill = strain)) +
  geom_bar(width=.7, stat='identity', position=position_dodge(.8)) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean+ SD), 
                width = 0.1, 
                position = position_dodge(width = 0.9)) +
  labs( 
       y = "Colony width of strain (cm)") +  coord_cartesian(ylim = c(0,7.5))+ scale_y_continuous(expand = c(0,0))+
  theme_bw()+
  geom_text(position=position_dodge(.8),aes(y =  Mean + SD + 0.1, label = letter),size =3, vjust = 0)+
  theme(legend.position = c(0.5, 0.93),
        legend.direction = "horizontal",
        legend.title = element_blank(),
        legend.text = element_text(face = "bold", size = 10, family = "serif"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold", color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
 guides(fill = guide_legend(keywidth = 0.5, keyheight = 0.5))+
  scale_x_discrete(limits = c('CK', 'Glucose', 'D-Xylose', 'Mannose','Cellulose','Pectin','Starch'))+
  scale_fill_discrete(labels = custom_labels)

ggsave(
  filename = "carbon_plot.jpeg",    # File name
  plot = plot_carbon,                  # Plot object
  width = 7,                   # Width in inches
  height = 2.5,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)

#..............................................................................................................................


data_vitamin <- data.frame(
  strain = c("Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
              "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C",
              "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
              "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C"),
  source = c("CK", "CK", "CK", "CK", 
            "H", "H", "H", "H",
            "B5", "B5", "B5", "B5", 
            "B1", "B1", "B1", "B1"),
  Mean = c(5.53, 5.47, 5.45, 5.5, 
           6.583333333, 6.85, 6.834, 6.566666667,
           5.853333333, 6.39, 6.35, 5.84, 
           5.863333333, 6.39, 6.356666667, 5.85),
  SD = c(0.08660254, 0.069282032, 0.075055535, 0.098149546, 
         0.125830574, 0.104403065, 0.10214369, 0.1040833,
         0.271538825, 0.092915732, 0.132287566, 0.280059517, 
         0.254230866, 0.127671453, 0.140118997, 0.262741952),
  letter = factor(c(
                    "a", "a", "a", "a",
                    "b","a","a","b",
                    "b","a","a","b",
                    "b","a","a","b"))
)

plot_vit = ggplot(data_vitamin, aes(x = source, y = Mean, fill = strain)) +
  geom_bar(width=.7, stat='identity', position=position_dodge(.8)) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean+ SD), 
                width = 0.1, 
                position = position_dodge(width = 0.9)) +
  labs( 
    y = "Colony width of strain (cm)") +  coord_cartesian(ylim = c(0,7.9))+ scale_y_continuous(expand = c(0,0))+
  theme_bw()+
  geom_text(position=position_dodge(.9),aes(y =  Mean + SD + 0.1, label = letter),size =3, vjust = 0)+
  theme(legend.position = c(0.4, 0.94),
        legend.direction = "horizontal",
        legend.title = element_blank(),
        legend.text = element_text(face = "bold", size = 10, family = "serif"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold", color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  guides(fill = guide_legend(keywidth = 0.5, keyheight = 0.5))+
  scale_x_discrete(limits = c('CK', 'B1', 'B5', 'H'))+
  scale_fill_discrete(labels = custom_labels)

ggsave(
  filename = "vit_plot.jpeg",    # File name
  plot = plot_vit,                  # Plot object
  width = 6,                   # Width in inches
  height = 3,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)
#............................................................................................................

# Create the data frame
data_amino <- data.frame(
  source = c("CK", "CK", "CK", "CK", 
             "L-Phe", "L-Phe", "L-Phe", "L-Phe", 
             "L-Arg", "L-Arg", "L-Arg", "L-Arg", 
             "L-Trp", "L-Trp", "L-Trp", "L-Trp", 
             "L-Thr", "L-Thr", "L-Thr", "L-Thr", 
             "L-Val", "L-Val", "L-Val", "L-Val"),
  strain = c("Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
             "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
             "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
             "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
             "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C", 
             "Vd592", "ΔVdPT1-1", "ΔVdPT1-2", "ΔVdPT1-C"),
  Mean = c(5.956666667, 5.82, 5.77, 5.896666667, 
           5.716666667, 6.08, 5.97, 5.703333333, 
           4.65, 5.996666667, 5.933333333, 4.62, 
           4.133333333, 5.1, 4.966666667, 4.033333333, 
           5.383333333, 5.5, 5.43, 5.373333333, 
           6.066666667, 6.37, 6.3, 6.033333333),
  SD = c(0.125033329, 0.157162336, 0.15, 0.092915732, 
         0.076376262, 0.115036226, 0.125033329, 0.087368949, 
         0.180277564, 0.105039675, 0.152752523, 0.196977156,
         0.115470054, 0.057735027, 0.057735027, 0.057735027, 
         0.125830574, 0.127410099, 0.130766968, 0.064291005, 
         0.057735027, 0.115325626, 0.1, 0.057735027),
  letter = factor(c("a", "a", "a", "a",
                    "b","a","a","b",
                    "b","a","a","b",
                    "b","a","a","b",
                    "a", "a", "a", "a",
                    "b","a","a","b"))
)

# View the data frame
print(data_amino)

plot_amino = ggplot(data_amino, aes(x = source, y = Mean, fill = strain)) +
  geom_bar(width=.7, stat='identity', position=position_dodge(.8)) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean+ SD), 
                width = 0.1, 
                position = position_dodge(width = 0.9)) +
  labs( 
    y = "Colony width of strain (cm)") +  coord_cartesian(ylim = c(0,7.9))+ scale_y_continuous(expand = c(0,0))+
  theme_bw()+
  geom_text(position=position_dodge(.9),aes(y =  Mean + SD + 0.1, label = letter),size =3, vjust = 0)+
  theme(legend.position = c(0.4, 0.92),
        legend.direction = "horizontal",
        legend.title = element_blank(),
        legend.text = element_text(face = "bold", size = 10, family = "serif"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold", color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  guides(fill = guide_legend(keywidth = 0.5, keyheight = 0.5))+
  scale_x_discrete(limits = c('CK', 'L-Phe', 'L-Arg', 'L-Thr', 'L-Trp', 'L-Val'))+
  scale_fill_discrete(labels = custom_labels)
plot_amino

ggsave(
  filename = "amino_plot.jpeg",    # File name
  plot = plot_amino,                  # Plot object
  width = 7,                   # Width in inches
  height = 2.5,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)

#.....................................................................

# Load necessary library
library(dplyr)

# Create the data frame
# Create the data frame
data_stress<- data.frame(
  Mean = c(57.93293333, 61.42756667, 62.1705, 57.316, 
           9.898366667, 42.81716667, 45.0828, 12.4615, 
           22.70326667, 33.52773333, 35.1769, 24.8154, 
           12.37803333, 19.4169, 22.02413333, 14.98703333, 
           24.11993333, 33.17196667, 34.83013333, 27.42473333, 
           46.13413333, 69.50003333, 66.01516667, 46.95913333),
  SD = c(0.38819301, 1.104585788, 0.234280366, 0.817710028,
         2.349199439, 2.089611728, 2.493987051, 1.662576046,
         2.810418477, 1.502405526, 1.708854072, 2.358449132,
         2.319456316, 1.956515185, 2.598078525, 1.670928372,
         1.558974667, 2.521028152, 1.918237473, 2.284756883,
         2.966138104, 0.437046111, 0.49652538, 2.728831357),
  strain = c("Vd592", "ΔVdPT-5-1", "ΔVdPT-5-2", "ΔVdPT-5-C",
             "Vd592", "ΔVdPT-5-1", "ΔVdPT-5-2", "ΔVdPT-5-C",
             "Vd592", "ΔVdPT-5-1", "ΔVdPT-5-2", "ΔVdPT-5-C",
             "Vd592", "ΔVdPT-5-1", "ΔVdPT-5-2", "ΔVdPT-5-C",
             "Vd592", "ΔVdPT-5-1", "ΔVdPT-5-2", "ΔVdPT-5-C",
             "Vd592", "ΔVdPT-5-1", "ΔVdPT-5-2", "ΔVdPT-5-C"),
  source = c("CR", "CR", "CR", "CR",
             "CFW", "CFW", "CFW", "CFW",
             "SDS", "SDS", "SDS", "SDS",
             "NaCl", "NaCl", "NaCl", "NaCl",
             "H2O2", "H2O2", "H2O2", "H2O2",
             "Mannitol", "Mannitol", "Mannitol", "Mannitol"),
  letter = c("b","a","a","b",
             "b","a","a","b",
             "b","a","a","b",
             "b","a","a","b",
             "b","a","a","b",
             "b","a","a","b")
)

print(data_stress)


plot_stress = ggplot(data_stress, aes(x = source, y = Mean, fill = strain)) +
  geom_bar(width=.7, stat='identity', position=position_dodge(.8)) +
  geom_errorbar(aes(ymin = Mean - SD, ymax = Mean+ SD), 
                width = 0.1, 
                position = position_dodge(width = 0.8)) +
  labs( 
    y = "Colony inhibition rate (%)") +  coord_cartesian(ylim = c(0,90))+ scale_y_continuous(expand = c(0,0))+
  theme_bw()+
  geom_text(position=position_dodge(.8),aes(y =  Mean + SD + 1, label = letter),size =3, vjust = 0)+
  scale_x_discrete(
    limits = c('CR', 'CFW', 'SDS', 'NaCl', 'H2O2', 'Mannitol'),
    labels = c(
      expression(bold("CR")), 
      expression(bold("CFW")), 
      expression(bold("SDS")), 
      expression(bold("NaCl")), 
      expression(bold(H[2] * O[2])), 
      expression(bold("Mannitol"))
    ),
  ) +
  theme(legend.position = c(0.4, 0.92),
        legend.direction = "horizontal",
        legend.title = element_blank(),
        legend.text = element_text(face = "bold", size = 10, family = "serif"),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(), 
        axis.title.x = element_blank(),
        axis.title.y = element_text(face = "bold", size = 12, family = "serif",vjust = 3),
        axis.text.x = element_text(face = "bold", color = "black",size = 10, family = "serif"),
        axis.text.y = element_text(face = "bold",color = "black",size = 10, family = "serif"))+
  guides(fill = guide_legend(keywidth = 0.5, keyheight = 0.5))+
  
  scale_fill_discrete(labels = custom_labels)
plot_stress

ggsave(
  filename = "stress_plot.jpeg",    # File name
  plot = plot_stress,                  # Plot object
  width = 7,                   # Width in inches
  height = 3,                   # Height in inches
  dpi = 500                     # Resolution in dpi (dots per inch)
)


