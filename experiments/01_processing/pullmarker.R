#function to pull actin
pullmarker <- function(dataframe, housekeeping_gene){

  df_hkg <- dataframe %>%
    dplyr::filter(primer == housekeeping_gene) %>% 
    select(!ct_sd_tecrep,hkg_ct=ct_avg_tecrep)
    
  return(df_hkg)
}