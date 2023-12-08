#function to save figure
savefig<- function(ggplot_figure, folder_location, file_name){

  path <-paste(folder_location,file_name,".png",sep = "")
  
  ggsave(filename = path,
         device = "png",
         height = 4, width = 5)
}