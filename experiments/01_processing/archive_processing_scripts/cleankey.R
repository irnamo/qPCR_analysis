#creating function for wrangling the data
library(tidyverse)

cleankey <- function(keyfile){
  df1 <- key %>%
#    sprintf(sample,"%02d") %>%
    add_row(sample=0) %>% 
    rename(Sample=sample) %>% 
    mutate(across(1:4, factor))
  return(df1)
}
