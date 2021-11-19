setwd("~/Desktop/r-novice-inflammation/")

##Custom function

#dir should be written as a path

function <- function(dir, col){   #dir = specified directory, col = specified column
  results <- 0
  for (i in list.files(dir)){
   table <- read.table(file=paste(dir,i,sep=""), sep=",", header = TRUE, stringsAsFactors=FALSE)  #assuming files are all csv files
    if (nrow(table)<50){
      print("Warning: There are less than 50 observations.")
      override <- readline("If you would still like to continue, press Y. To exit, press any other key. ")
      if(override=="Y"){
        results <- c(results, sd(table[,col])/mean(table[,col]))
      }else{
        results <- c(results, NA)
      }
    }else{
      results <- c(results, sd(table[,col])/mean(table[,col]))
    } #end if-else
  } #end for loop
  return(results[-1]) #to remove 0 from vector
} #end custom function  