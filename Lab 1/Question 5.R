oddSum <- function(vctr){
  
  sum = 0
  for(i in 1:length(vctr)){
    if(vctr[i] %% 2 != 0){
      sum = sum + vctr[i]
    }
  }
  return(sum)
}

vctr <- as.integer(strsplit(readline(prompt = "Set 1: "), " ")[[1]])
print(sum(vctr[which(vctr %% 2 != 0)]))
print(oddSum(vctr))