setwd("~/Desktop/r-novice-inflammation/Ex9/")

##Custom function

function <- function(dir, col){   #dir = directory col = specified column
  
  if (ncol()<50){ ##would it be ncol??? or maybe nrow after subsetting the column
    print(Warning: File has less than 50 observations)
  }else{
    for (file in list.files(dir)){
      ##print CV for the specified column in each file
    }#end for loop
  } #end of if-else 
} #end custom function
  
#needs to loop through every file in the directory
for (file in list.files()){
  print()
}
  
#coefficient of variation: CV <- sd(x)/mean(x)