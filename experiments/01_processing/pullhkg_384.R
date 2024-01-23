#function to pull actin
pullhkg_384 <- function(dataframe, housekeeping_gene){

  df_hkg <- dataframe %>%
    dplyr::filter(Target == housekeeping_gene)%>% 
    select(!cq_sd_tecrep,hkg_cq=cq_avg_tecrep)
    
  return(df_hkg)
}