## Put comments here that give an overall description of what your
## functions do: My fuctions calculate the inverse of a matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() {x}
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function: This function make a review of if the inverse has been previous calculated and whether calculate it.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
}
