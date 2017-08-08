vctr <- as.integer(strsplit(readline(prompt = "Set 1: "), " ")[[1]])
print(which.max(vctr))
max <- 1
for(i in 1:length(vctr)){
  if(vctr[i] > vctr[max]){
    max <- i
  }
}
print(i)