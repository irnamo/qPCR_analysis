#function to combine tables and calculate delta-Ct
deltact_384 <- function(dataframe,housekeeping_df, marker_gene){  
  #dataframe= a data frame, df1 from calctecrep.R
  #housekeeping_df=a data frame, df_hkg from pullhkg.R
  #marker_gene=a string, name of marker as appears in df1 primers column
  #list_for_join= c(surrounding a "", "" list of column names) to join by
  
  df_marker <- dataframe %>% #pull dataframe for merker gene
    dplyr::filter(Target == marker_gene) %>% 
    select(!cq_sd_tecrep,marker_cq=cq_avg_tecrep)
  
  df_merge <- df_marker %>% #merge marker gene dataframe with housekeeping gene dataframe
    left_join(y=housekeeping_df) %>%  #example: by=c("Sample","genotype","treatment")
    relocate(Sample)
 
  return(df_merge)
  
  #df_dct <- df_merge %>% 
  #  mutate(d_cq=marker_cq-hkg_cq)
  
  #return(list(df_dct, df_marker)) #returns list of tables (1)is delta cq or delta ct. (2) is the isolated marker gene
}