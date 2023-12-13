# Script to pull housekeeping-gene into separate table
source("01_processing/cleandata.R")
source("01_processing/calctecrep.R")
source("01_processing/pullmarker.R")

processmarker <- function(rawfile, housekeeping_gene){
  df_a <- cleandata(rawfile)
  df_b <- calctecrep(df_a) #shows technical replicate average and standard deviation
  df_c <- pullmarker(df_b) #pulls
  
  return(list(df_c, df_b))
}
