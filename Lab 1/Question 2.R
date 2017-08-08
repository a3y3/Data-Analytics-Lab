k <- as.integer(readline(prompt = "Enter k: "))
n <- as.integer(readline(prompt = "Enter n: "))

vctr <- seq(1, k)
i <- 1
while(i<=k)
{
  if(vctr[i] %% n == 0)
  {
    print(vctr[i])
  }
  i = i + 1
}