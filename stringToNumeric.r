stringToNumeric<- function(x) {
    #function to convert string vector to numeric values, for performing
    #regression
    numberOfDistinctStrings <- length(unique(x))
    listForConversion <- vector(mode="list",length=numberOfDistinctStrings)
    index <- 1
    #assign a number to each distinct string
    for (string in unique(x) {
        listForConversion[index]$string = string
        listForConversion[index]$number = index
        index <- index +1
    }
    vectorToBeReturned <- vector(mode="numeric")
    #now create the list of numeric values
    for (element in x) {
        vectorToBeReturned[index] <- c(vectorToBeReturned, listForConversion)
    }
}