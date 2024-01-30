#creating function for wrangling the data
library(tidyverse)

cleankey2 <- function(keyfile,samplevariable){
  # keyfile = table of sample key
  # samplevariable = "name of sample column"... must be passed into ""
  
  df1 <- keyfile %>%
    mutate( Sample = str_pad(as.character(keyfile[[samplevariable]]), width=2, pad="0")) %>% 
    add_row(Sample="00")%>% 
    mutate(across(1:5, factor)) %>% 
    select(Sample,genotype,treatment,time,rep)#for data including bio replicate or plant ID

  return(df1)
}
