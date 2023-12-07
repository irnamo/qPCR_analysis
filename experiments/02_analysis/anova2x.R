##load packages
library(rstatix)
#function to calculate statistics
anova2x <- function(dataframe){ 
  #trim unused variables
  df_trim<- dataframe %>% 
    dplyr::select(!c(primer.x:hkg_ct)) %>% 
    ungroup()
  #test 2-way anova
  res.aov <- anova_test(d_ct ~ genotype*treatment,data = df_trim, 
                        dv = d_ct, wid = sample,
                        within = c(genotype:treatment))
  ra<- get_anova_table(res.aov)
  #test one way anova between genotypes
  one.way <- df_trim %>%
    group_by(treatment) %>%
    anova_test(d_ct ~ genotype ,dv = d_ct, wid = sample, within = genotype) %>%
    get_anova_table() %>%
    adjust_pvalue(method = "bonferroni")
  
  #set up variable for automatically setting height of p-value bars
  p.val.ht <- max(2^(-1*(df_trim$d_ct)))
  
  #calculate pairwise comparison by t-test with bonferroni correction
  pairwise_comp <- df_trim %>%
    group_by(treatment) %>%
    pairwise_t_test(
      d_ct ~ genotype, paired = TRUE,
      p.adjust.method = "bonferroni") %>%
    mutate(y.position = 1.1*p.val.ht)
  
  return(pairwise_comp)
}