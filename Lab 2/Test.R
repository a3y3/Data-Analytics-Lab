install.packages("e1071", repos = "http://R-forge.R-project.org")
library(e1071)
dataset <- women
x = women$height
y = women$weight
plot(x, y, xlab = "Height", ylab = "Weight")
hist(x = x,  main = "No Breaks")
predict(lm(x~y, dataset), dataset, interval = "confidence")
dataset2 <- as.data.frame(Titanic)
classifier <- naiveBayes(x = dataset2, y = dataset2[, 4], subset = dataset[,-4])
pred <-predict(classifier, dataset2)
table(pred, dataset2$Survived)
