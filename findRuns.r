#function to find the length of consecutive 1s in a vector of ones and zeros.
#length of the run to be found is also to be supplied
#returns the indices at which such runs can be found
findRuns<-function(vectorOnesNZeros,lengthOfRunToBeFound) {
    runs <- vector(length = 0)
    for (i in 1:(length(vectorOnesNZeros)-lengthOfRunToBeFound+1)) {
        if (all(vectorOnesNZeros[i:(i+lengthOfRunToBeFound -1)]==1))
            runs<-c(runs,i)
    }
    return(runs)
}