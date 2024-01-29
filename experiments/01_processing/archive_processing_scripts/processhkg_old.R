# Script to pull housekeeping-gene into sepparate table
source("01_processing/cleandata.R")
source("01_processing/calctecrep.R")
source("01_processing/pullhkg.R")

processhkg <- function(rawfile, housekeeping_gene){
  df_a <- cleandata(rawfile)
  df_b <- calctecrep(df_a)
  df_c <- pullhkg(df_b, housekeeping_gene)
  
  return(list(df_c, df_b))
}
