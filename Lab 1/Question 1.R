a <- as.integer(readline(prompt = "Enter value of a: "))
b <- as.integer(readline(prompt = "Enter value of b: "))
c <- as.integer(readline(prompt = "Enter value of c: "))

det <- b^2 - (4 * a * c)
if(det == 0){
  print (-b/(2*a))
} else if(det > 0){
  print ((-b + sqrt(det))/(2*a))
  print ((-b - sqrt(det))/(2*a))
} else {
  print("No real roots exist")
}