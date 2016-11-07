## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        minv <- NULL
        set <- function(y) {
                x <<- y
                minv <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) minv <<- solve
        getmatrix <- function() minv
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}
cacheSolve <- function(x, ...) {
        minv <- x$getmatrix()
        if(!is.null(minv)) {
                message("getting cached data")
                return(minv)
        }
        data <- x$get()
        minv <- solve(data, ...)
        x$setmatrix(minv)
        minv
}
