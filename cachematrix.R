## Name: chachematrix.R
## By: Tuang Dheandhanoo
## Description: 
##      In this file I create two function 
##      the first one will create a list of functions similar to the assignment example
##      set the value of the vector 
##      get the value of the vector
##      set the value of inverse
##      get the value of inverse
##      

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- t(data, ...)
        x$setinverse(i)
        i
}
