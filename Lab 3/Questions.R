retailData = as.data.frame(read.csv(file = "//home//student1//140911090//Lab 3//OnlineRetail.csv"))
count = 0
rows <- nrow(retailData)
for(i in 1:(rows)){
  if(retailData$Country[i] == 'United Kingdom'){
    count <- (count + 1)
  }
}
print(paste("Number of items purchased by UK customers is:", count))
count = 0
for(i in 1:(rows)){
  if(retailData$CustomerID[i] == '13744' & substr(dataRetail$InvoiceDate[i], 0, 8) == '20/02/11'){
    count <- (count + retail$Quantity[i]*retail$UnitPrice[i])
  }
}
print (paste("13744 spent $",count , sep = ""))
count = 0
max = 0
franceDataSet = subset(retailData, retailData$Country == "France")
itemName = ""
rows = nrow(franceDataSet)
for(i in 1:(rows)){
  if(franceDataSet$Quantity[i] > max ){
    max = franceDataSet$Quantity[i]
    itemName = franceDataSet$Description[i]
  }
}
print(paste(itemName,"has been purchased the most number of times"))
print(paste("Number of times purchased was ", max))
dataRetailSorted = dataRetail[order(dataRetail[,4], decreasing = TRUE),]
count = 0
rows = nrow(dataRetailSorted)
for(i in 1:(rows)){
  if(substr(dataRetailSorted$InvoiceDate[i], 7 ,8) == '11'){
    if(substr(dataRetailSorted$InvoiceDate[i], 2,2) >= 4 & substr(dataRetailSorted$InvoiceDate[i], 2,2) <= 6){
      count <- (count + 1)
      print(dataRetailSorted$Description[i])
      if(count >= 5){
        break
      }
    }
  }
}
wineDataSet <- as.data.frame(read.csv("//home//student1//140911090//Lab 3/Wine_data.csv"))
wineDataSet
