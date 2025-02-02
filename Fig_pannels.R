
install.packages("gridExtra")
library(gridExtra)
library(grid)

setwd("C:/Users/aliss/Documents/Work/Drought_Exp/output/plots")
############################ Leaf traits v1 ##########################################
Centered_Chi_plot.g <- ggplotGrob(Centered_Chi_plot)
Centred_Nmass_plot.g <- ggplotGrob(Centred_Nmass_plot)
Centered_LMA_plot.g <- ggplotGrob(Centered_LMA_plot)

Delta_leaf_traits_v1 <- rbind (Centered_Chi_plot.g,Centred_Nmass_plot.g,Centered_LMA_plot.g, size="max" )

Chi_plot_t4.g <- ggplotGrob(Chi_plot_t4)
Nmass_plot_t4.g <- ggplotGrob(Nmass_plot_t4)
LMA_plot_t4.g <- ggplotGrob(LMA_plot_t4)

leaf_traits_t4 <- rbind (Chi_plot_t4.g,Nmass_plot_t4.g,LMA_plot_t4.g, size="max" )

leaf_traits_v1 <- cbind(Delta_leaf_traits_v1,leaf_traits_t4,size = 'max')
                                                                   
jpeg(filename = "leaf_traits_v1.jpeg", 
     width = 14, height = 16, units = 'in', res = 600)
grid.newpage()
grid.draw(leaf_traits_v1)

grid.text("(a)", x = 0.03, y = 0.99, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(c)", x = 0.03, y = 0.73, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(e)", x = 0.03, y = 0.35, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

grid.text("(b)", x = 0.93, y = 0.95, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(d)", x = 0.93, y = 0.63, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(f)", x = 0.93, y = 0.31, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

# Close the JPEG device
dev.off()

#######################################################################################
############################ Leaf traits v2 ##########################################
Centred_Narea_plot.g <- ggplotGrob(Centered_Narea_plot)
Centered_Chlarea_plot.g <- ggplotGrob(Centered_Chlarea_plot)

Delta_leaf_traits_v2 <- rbind (Centred_Narea_plot.g,Centered_Chlarea_plot.g, size="max" )

Narea_plot_t4.g <- ggplotGrob(Narea_plot_t4)
Chl_plot_t4.g <- ggplotGrob(Chl_plot_t4)
leaf_traits_t4_v2 <- rbind (Narea_plot_t4.g,Chl_plot_t4.g, size="max" )

leaf_traits_v2 <- cbind(Delta_leaf_traits_v2,leaf_traits_t4_v2,size = 'max')

jpeg(filename = "leaf_traits_v2.jpeg", 
     width = 14, height = 14, units = 'in', res = 600)
grid.newpage()
grid.draw(leaf_traits_v2)
grid.text("(a)", x = 0.05, y = 0.95, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))  # Top-left
grid.text("(c)", x = 0.05, y = 0.45, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))  # Bottom-left

grid.text("(b)", x = 0.52, y = 0.95, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))  # Top-right
grid.text("(d)", x = 0.52, y = 0.45, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))  # Bottom-right
dev.off()

############################ Photosynthetic traits ##########################################
Centred_Vcmax_plot.g <- ggplotGrob(Centred_Vcmax_plot)
Centered_Jmax_plot.g <- ggplotGrob(Centered_Jmax_plot)
Centered_Anet_plot.g <- ggplotGrob(Centered_Anet_plot)

Delta_Photo_traits <- rbind (Centred_Vcmax_plot.g,Centered_Jmax_plot.g,Centered_Anet_plot.g, size="max" )

Vcmax_plot_t4.g <- ggplotGrob(Vcmax_plot_t4)
Jmax_plot_t4.g <- ggplotGrob(Jmax_plot_t4)
Anet_plot_t4.g <- ggplotGrob(Anet_plot_t4)

Photo_traits_t4 <- rbind (Vcmax_plot_t4.g,Jmax_plot_t4.g,Anet_plot_t4.g, size="max" )

Photo_traits <- cbind(Delta_Photo_traits,Photo_traits_t4)


jpeg(filename = "Photo_traits.jpeg", 
     width = 14, height = 16, units = 'in', res = 600)
grid.newpage()
grid.draw(Photo_traits)

grid.text("(a)", x = 0.02, y = 0.98, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(c)", x = 0.02, y = 0.74, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(e)", x = 0.02, y = 0.50, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

grid.text("(b)", x = 0.93, y = 0.98, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(d)", x = 0.93, y = 0.74, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(f)", x = 0.93, y = 0.50, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

# Close the JPEG device
dev.off()

#######################################################################################

############################ N allocation ##########################################
Centered_Nrubisco_plot.g <- ggplotGrob(Centered_Nrubisco_plot)
Centered_Nbioe_plot.g <- ggplotGrob(Centered_Nbioe_plot)
Centered_Nlh_plot.g <- ggplotGrob(Centered_Nlh_plot)
Centered_Nstructure_plot.g <- ggplotGrob(Centered_Nstructure_plot)

Delta_N_allocation <- rbind (Centered_Nrubisco_plot.g,Centered_Nbioe_plot.g,
                             Centered_Nlh_plot.g,Centered_Nstructure_plot.g, size="max" )

nrubisco_plot_t4.g <- ggplotGrob(nrubisco_plot_t4)
nbioe_plot_t4.g <- ggplotGrob(nbioe_plot_t4)
Nlh_plot_t4.g <- ggplotGrob(Nlh_plot_t4)
Nstr_plot_t4.g <- ggplotGrob(Nstr_plot_t4)

N_allocation_t4 <- rbind (nrubisco_plot_t4.g,nbioe_plot_t4.g,
                          Nlh_plot_t4.g,Nstr_plot_t4.g, size="max" )

N_allocation <- cbind(Delta_N_allocation,N_allocation_t4,size = 'max')

jpeg(filename = "N_allocation.jpeg", 
     width = 14, height = 16, units = 'in', res = 600)
grid.newpage()
grid.draw(N_allocation)


grid.text("(a)", x = 0.02, y = 0.98, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(c)", x = 0.02, y = 0.74, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(e)", x = 0.02, y = 0.50, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(g)", x = 0.02, y = 0.26, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

grid.text("(b)", x = 0.93, y = 0.98, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(d)", x = 0.93, y = 0.74, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(f)", x = 0.93, y = 0.50, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(h)", x = 0.93, y = 0.26, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

# Close the JPEG device
dev.off()

#######################################################################################

####################### Biomass + cost ##############################################################
PSA_plot_t4.g <- ggplotGrob(PSA_plot_t4)
biomass_plot_t4.g <- ggplotGrob(biomass_plot_t4)

N_cost_plot_t4_plot.g <- ggplotGrob(N_cost_plot_t4)
transp_cost_plot_t4.g <- ggplotGrob(transp_cost_plot_t4)

biomass <- cbind (PSA_plot_t4.g,biomass_plot_t4.g, size="max" )
cost <- cbind (transp_cost_plot_t4.g,N_cost_plot_t4_plot.g, size="max" )

whole_plant <- rbind(biomass,cost,size = 'max')


jpeg(filename = "whole_plant.jpeg", 
     width = 16, height = 14, units = 'in', res = 600)
grid.newpage()
grid.draw(whole_plant)

grid.text("(a)", x = 0.02, y = 0.98, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(b)", x = 0.93, y = 0.98, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(c)", x = 0.02, y = 0.48, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))
grid.text("(d)", x = 0.93, y = 0.48, just = "left", gp = gpar(fontsize = 14, fontface = "bold"))

# Close the JPEG device
dev.off()

############################## Fig 1 a and b ##################################################

setwd("C:/Users/aliss/Documents/Work/Drought_Exp/input")
FC_Fig <- read.csv('FC.csv')
names(FC_Fig)

FC_Fig$plant = as.character(FC_Fig$plant)

B2= subset(FC_Fig, ID_trt=="B2")
B5= subset(FC_Fig, ID_trt=="B5")
B6= subset(FC_Fig, ID_trt=="B6")
B3= subset(FC_Fig, ID_trt=="B3")

SPD= subset(FC_Fig, drought=="SPD")
FDD= subset(FC_Fig, drought=="FDD")


Fig1a <- ggplot(data = B5, aes(x = DAD, y = FC, color = plant)) +
  geom_point(size = 3) +   # Add points with shapes for nitrogen levels
  geom_line(aes(group = plant), size = 1)+
  theme(legend.position = "right",
        plot.title = element_text(size = rel(2.2), hjust = 1, vjust = 1),  
        plot.title.position = "panel",  
        legend.title = element_text(size = rel(1.5)),
        legend.text = element_text(size = rel(1.5)),
        plot.tag = element_text(size = rel(2)),
        axis.title.y=element_text(size=rel(2.2), colour = 'black'),
        axis.title.x=element_text(size=rel(2.2), colour = 'black'),
        axis.text.x=element_text(size=rel(2), colour = 'black'),
        axis.text.y=element_text(size=rel(2), colour = 'black'),
        panel.background = element_rect(fill = 'white', colour = 'black'),
        panel.grid.major = element_line(colour = "grey")) +
  ylab(expression(italic('FC')[''] *' (g water g soil' ^ '-1' * ')')) +
  xlab(expression (italic('Day After Drought')))+
labs(title = "HN-SPD")  # Add title here
Fig1a



Fig1b <- ggplot(data = B2, aes(x = DAD, y = FC, color = plant)) +
  geom_point(size = 3) +   # Add points with shapes for nitrogen levels
  geom_line(aes(group = plant), size = 1)+
  theme(legend.position = "right",
        plot.title = element_text(size = rel(2.2), hjust = 1, vjust = 1),  
        plot.title.position = "panel",  
        legend.title = element_text(size = rel(1.5)),
        legend.text = element_text(size = rel(1.5)),
        plot.tag = element_text(size = rel(2)),
        axis.title.y=element_text(size=rel(2.2), colour = 'black'),
        axis.title.x=element_text(size=rel(2.2), colour = 'black'),
        axis.text.x=element_text(size=rel(2), colour = 'black'),
        axis.text.y=element_text(size=rel(2), colour = 'black'),
        panel.background = element_rect(fill = 'white', colour = 'black'),
        panel.grid.major = element_line(colour = "grey")) +
  ylab(expression(italic('FC')[''] *' (g water g soil' ^ '-1' * ')')) +
  xlab(expression (italic('Day After Drought')))+
  labs(title = "LN-SPD")  # Add title here
Fig1b


Fig1c <- ggplot(data = B6, aes(x = DAD, y = FC, color = plant)) +
  geom_point(size = 3) +   # Add points with shapes for nitrogen levels
  geom_line(aes(group = plant), size = 1)+
  theme(legend.position = "right",
        plot.title = element_text(size = rel(2.2), hjust = 1, vjust = 1),  
        plot.title.position = "panel",  
        legend.title = element_text(size = rel(1.5)),
        legend.text = element_text(size = rel(1.5)),
        plot.tag = element_text(size = rel(2)),
        axis.title.y=element_text(size=rel(2.2), colour = 'black'),
        axis.title.x=element_text(size=rel(2.2), colour = 'black'),
        axis.text.x=element_text(size=rel(2), colour = 'black'),
        axis.text.y=element_text(size=rel(2), colour = 'black'),
        panel.background = element_rect(fill = 'white', colour = 'black'),
        panel.grid.major = element_line(colour = "grey")) +
  ylab(expression(italic('FC')[''] *' (g water g soil' ^ '-1' * ')')) +
  xlab(expression (italic('Day After Drought')))+
  labs(title = "HN-FDD")  # Add title here
Fig1c


Fig1d <- ggplot(data = B3, aes(x = DAD, y = FC, color = plant)) +
  geom_point(size = 3) +   # Add points with shapes for nitrogen levels
  geom_line(aes(group = plant), size = 1)+
  theme(legend.position = "right",
        plot.title = element_text(size = rel(2.2), hjust = 1, vjust = 1),  
        plot.title.position = "panel",  
        legend.title = element_text(size = rel(1.5)),
        legend.text = element_text(size = rel(1.5)),
        plot.tag = element_text(size = rel(2)),
        axis.title.y=element_text(size=rel(2.2), colour = 'black'),
        axis.title.x=element_text(size=rel(2.2), colour = 'black'),
        axis.text.x=element_text(size=rel(2), colour = 'black'),
        axis.text.y=element_text(size=rel(2), colour = 'black'),
        panel.background = element_rect(fill = 'white', colour = 'black'),
        panel.grid.major = element_line(colour = "grey")) +
  ylab(expression(italic('FC')[''] *' (g water g soil' ^ '-1' * ')')) +
  xlab(expression (italic('Day After Drought')))+
  labs(title = "LN-FDD")  # Add title here
Fig1d


############################ Fig1 ##########################################
setwd("C:/Users/aliss/Documents/Work/Drought_Exp/output/plots")

Fig1a.g <- ggplotGrob(Fig1a)
Fig1b.g <- ggplotGrob(Fig1b)
Fig1c.g <- ggplotGrob(Fig1c)
Fig1d.g <- ggplotGrob(Fig1d)

SPD <- cbind (Fig1a.g,Fig1b.g, size="max" )
FDD <- cbind (Fig1c.g,Fig1d.g, size="max" )

Fig1 <- rbind(SPD,FDD,size = 'max')


jpeg(filename = "Fig1.jpeg", 
     width = 16, height = 14, units = 'in', res = 600)
grid.newpage()
grid.draw(Fig1)
dev.off()



# Create text labels for each figure
label_a <- textGrob("(a)", gp=gpar(fontsize=20))
label_b <- textGrob("(b)", gp=gpar(fontsize=20))
label_c <- textGrob("(c)", gp=gpar(fontsize=20))
label_d <- textGrob("(d)", gp=gpar(fontsize=20))

Fig1a_labeled <- Fig1a + annotation_custom(grob = textGrob("(a)", gp=gpar(fontsize=16, fontface="bold")), 
                                           xmin = 40, xmax = 40, ymin = 0.98, ymax = 0.98)

Fig1b_labeled <- Fig1b + annotation_custom(grob = textGrob("(b)", gp=gpar(fontsize=16, fontface="bold")), 
                                           xmin = 40, xmax = 40, ymin = 0.98, ymax = 0.98)

Fig1c_labeled <- Fig1c + annotation_custom(grob = textGrob("(c)", gp=gpar(fontsize=16, fontface="bold")), 
                                           xmin = 40, xmax = 40, ymin = 0.98, ymax = 0.98)

Fig1d_labeled <- Fig1d + annotation_custom(grob = textGrob("(d)", gp=gpar(fontsize=16, fontface="bold")), 
                                           xmin = 40, xmax = 40, ymin = 0.98, ymax = 0.98)

# Arrange the plots into two columns
Fig1 <- grid.arrange(
  arrangeGrob(Fig1a_labeled, Fig1b_labeled, ncol = 1, heights = unit(c(0.45, 0.45), "npc")),
  arrangeGrob(Fig1c_labeled, Fig1d_labeled, ncol = 1, heights = unit(c(0.45, 0.45), "npc")),
  ncol = 2
)

jpeg(filename = "Fig1.jpeg", width = 14, height = 14, units = 'in', res = 600)
grid.newpage()
grid.draw(Fig1)
dev.off()


