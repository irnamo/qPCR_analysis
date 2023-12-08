##load packages
library(ggpubr)

#function to generate figure
figure <- function(dataframe,title){ 
  # Specify the comparisons for p-value
  my_comparisons <- list( c("WT", "ACET1")) 
  # facet label names
  treat.labs <- c("PstDC3000","PstΔAA","Mock")
  names(treat.labs) <- anova_treatment$treatment
  
  ###calculate average delta-Ct and 2^delta CT
  df_logdct <- dataframe %>% 
    dplyr::group_by(genotype,treatment) %>% 
    mutate(log_d_ct = 2^(-1*(d_ct))) 
  
  fig <- ggboxplot(df_logdct,x = "genotype",y = "log_d_ct",
                   order = (c("WT", "ACET1")),
                   fill = "genotype", palette = "jco", add = "jitter") + 
    theme(legend.position = "null") +
    stat_pvalue_manual(data = anova_treatment, label = "p.adj.signif") +
    facet_wrap(vars(treatment),
               nrow = 1, switch = "x",labeller = as_labeller(treat.labs)) +
    ggtitle(title) +
    theme(plot.title = element_text(hjust = 0.5)) + 
    xlab(NULL) + ylab("Relative transcript abundance")+
    scale_x_discrete(labels=c("ACET1" = expression(Delta*ACET1)))
 
  print(fig)
  return(fig)
}

# NEW facet label names for Treatment variable, using labeller and as_labeler functions
#treat.labs <- c("Mock 06hr", "PstDC3000 06hr", "PstΔAA 06hr", "Mock 10hr", "PstDC3000 10hr", "PstΔAA 10hr")
#names(treat.labs) <- pwc$Treatment

#ggplot to generate figure

#  
  #stat_compare_means(data = pwc,comparisons = my_comparisons, label = "p.adj")+ # Add pairwise comparisons p-value
  ##stat_compare_means(label.y = 10) +     # Add global p-values
#  + ##library(car)
#  

#figw2_p1