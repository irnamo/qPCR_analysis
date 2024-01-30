#creating function for wrangling the data
library(tidyverse)

cleandata1_384 <- function(rawdata,samplevariable){
  
  df1 <- rawdata %>%
    dplyr::select("Well", "Sample","Target", "Cq")
  
  df2 <- df1 %>%
    mutate(across(where(is.character), str_remove_all, pattern = fixed(" ")))%>% #removes spaces in target names
    mutate( Sample = str_pad(as.character(rawdata[[samplevariable]]), width=2, pad="0")) %>% 
    mutate(across(-Cq, factor)) %>% #coerce all variables except Cq to factor
    mutate(across(Cq, as.numeric)) #ensure Cq is numeric
    
  return(df2)
}
