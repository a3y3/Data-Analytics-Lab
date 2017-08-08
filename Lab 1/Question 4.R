isJoint <- function(set_1, set_2){
  
  return(length(intersect(set_1, set_2)))
}
set_1 <- as.integer(strsplit(readline(prompt = "Set 1: "), " ")[[1]])
set_2 <- as.integer(strsplit(readline(prompt = "Set 2: "), " ")[[1]])

if(isJoint(set_1, set_2)){
  
  print("Not disjoint")
} else {
  
  print("Disjoint")
}