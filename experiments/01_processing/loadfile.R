#function to load data files
#by Iris N. Mollhoff
##load packages
library(tidyverse)
library(readxl)
##load data files
loadfile <- function(folder, file_xls){
  data_dir <- paste(folder,file_xls,".xlsx", sep = "")
  rawcq <- read_excel(data_dir, sheet = "Labeled")
  return(rawcq)
}