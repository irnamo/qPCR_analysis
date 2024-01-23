#function to pull actin
pullhkg <- function(dataframe, housekeeping_gene){

  df_hkg <- dataframe %>%
    dplyr::filter(Target == housekeeping_gene)%>% 
    select(!ct_sd_tecrep,hkg_ct=ct_avg_tecrep)
    
  return(df_hkg)
}