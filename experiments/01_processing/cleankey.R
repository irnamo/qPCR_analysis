#creating function for wrangling the data
library(tidyverse)

cleankey <- function(keyfile){
  df1 <- key %>% 
    add_row(sample=0) %>% 
    rename(Sample=sample)
  return(df1)
}
