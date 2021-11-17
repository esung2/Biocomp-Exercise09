setwd("~/Desktop/r-novice-inflammation/Ex9/")

##Custom function

#custom function
function <- function(dir, col){   #dir = directory col = specified column
  results <- 0
  for (i in list.files(dir)){
   table <- read.table(file=paste(dir,i,sep=""), sep=",", header = TRUE, stringsAsFactors=FALSE)  #assuming files are all csv files
    if (nrow(table)<50){
      #add if-else for override
      print("Warning: There are less than 50 observations")
      #userinput code
      if(override==true){
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
    
file[,col]
  
#needs to loop through every file in the directory to read data from each file 

  
#coefficient of variation: CV <- sd(x)/mean(x)