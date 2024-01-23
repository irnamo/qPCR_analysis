#creating function for wrangling the data
library(tidyverse)

cleandata_384 <- function(rawdata){
  df1 <- rawdata %>%
    dplyr::select("Well","Sample","Target", "Cq")
  df2 <- df1 %>%
    mutate(across(-Cq, factor)) %>% 
    mutate(across(Cq, as.numeric))
  return(df2)
}
