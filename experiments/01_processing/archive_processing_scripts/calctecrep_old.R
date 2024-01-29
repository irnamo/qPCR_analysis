#function to calculate tech rep average
calctecrep <- function(dataframe){
  df1 <- dataframe %>%
   group_by(primer, genotype, treatment, sample) %>%
    dplyr::summarise(ct_avg_tecrep = mean(ct, na.rm=TRUE), ct_sd_tecrep = sd(ct, na.rm=TRUE))
  return(df1)
}