#function to combine tables and calculate delta-Ct
deltact <- function(dataframe,housekeeping_df, marker_gene){  
  #dataframe= a data frame, df1 from calctecrep.R
  #housekeeping_df=a data frame, df_hkg from pullhkg.R
  #marker_gene=a string, name of marker as appears in df1 primers column
  
  df_marker <- dataframe %>% #pull dataframe for merker gene
    dplyr::filter(primer == marker_gene) %>% 
    select(!ct_sd_tecrep,marker_ct=ct_avg_tecrep)
  
  df_merge <- df_marker %>% #merge marker gene dataframe with housekeeping gene dataframe
    left_join(y=df_hkg, by=c("sample","genotype","treatment")) %>%  
    relocate(primer.x, .before = marker_ct) %>% 
    relocate(sample)
 
  df_dct <- df_merge %>% 
    mutate(d_ct=marker_ct-hkg_ct)
  
  return(list(df_dct, df_marker))
}