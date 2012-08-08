#function to find all perfect squares from 1 to n
findPerfectSquares <- function(n){
    roots <- sqrt(1:n)
    # This will show the indices which have an integer square root value. Since
    # we have created a sequential vector, the indices returned are in fact the 
    # perfect squares. 
    # Hence, return(roots[(roots*10)%%10 == 0]) will not return 
    # the square value, but the square root values which are integers.
    return(which((roots*10)%%10 == 0))
    
}