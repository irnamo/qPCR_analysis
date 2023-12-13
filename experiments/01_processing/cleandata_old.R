#creating function for wrangling the data
cleandata <- function(rawfile){
  df <- rawfile %>%
    rename("well"="Well / Set", "ct"="C(t)")
  df <- df %>%
    mutate(across(-ct, factor))
  return(df)
}
