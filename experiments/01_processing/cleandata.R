#creating function for wrangling the data
cleandata <- function(rawfile){
  df <- rawfile %>%
    rename("well"="Well / Set", "ct"="C(t)") %>%
    mutate(across(where(is.character), factor))
  return(df)
}
