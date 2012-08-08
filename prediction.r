#example 2.5.2 from the book: Predicting Discrete-valued time series
#input: x---vector of data (1s n 0s)
#       k---length of previous data to use for prediction
#output: prediction for k+1
predictor<-function(x,k){
    n <-length(x)
    #prediction is based on a majority rule. So, if in the last k days,
    #majority(atleast k/2) was 1, then the prediction should be 1.
    prediction <-vector(length=(n-k))
    index <- 1
    for (i in (k+1):n) {
        #the sum works because the vector is ones and zeros. Otherwise, this
        #would be more complicated
        if (sum(x[(i-k):(i-1)]) >= (k/2))
            prediction[index] <- 1
        else
            prediction[index] <- 0
        index<- index +1
    }
    #we have predictions for all values in x from k+1 to n. Check if these values
    #were correct and find the error
    return(mean(abs(prediction - x[(k+1):n])))
}