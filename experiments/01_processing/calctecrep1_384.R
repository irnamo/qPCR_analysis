#function to calculate tech rep average
calctecrep1_384 <- function(dataframe){
  
  df1 <- dataframe %>%
   group_by(Target, genotype, treatment, time, rep, Sample) %>% #includes bio rep
    dplyr::summarise(cq_avg_tecrep = mean(Cq, na.rm=TRUE), 
                     cq_sd_tecrep = sd(Cq, na.rm=TRUE))
  
  return(df1)
}