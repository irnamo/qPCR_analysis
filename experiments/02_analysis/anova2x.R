##load packages
library(rstatix)
#function to calculate statistics
anova2x <- function(dataframe){  
  res.aov <- anova_test(d_ct ~ genotype*treatment ,data = dataframe, 
                        dv = d_ct, wid = sample,
                        within = c(genotype:treatment)
  )
  ra<- get_anova_table(res.aov)
  return(ra)
}