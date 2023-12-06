#creating function for wrangling the data
cleandata <- function(data){
  df = data %>%
    mutate(across(where(is.character), factor),
           across(where(is.factor), str_to_title))
  return(df)
}
