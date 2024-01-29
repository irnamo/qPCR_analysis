#function to load data files
#by Iris N. Mollhoff
##load packages
library(tidyverse)
library(readxl)

##load data files
loadfile_csv <- function(folder, file_csv){
  
  data_dir <- paste(folder,file_csv,".csv", sep = "")
  table_csv <- read_csv(data_dir)
  return(table_csv)
}