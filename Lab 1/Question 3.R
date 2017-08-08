occurenceCount <- function(file){
  return(length(which(read.table(file) == "abc")))
}

print(occurenceCount("test.txt"))
