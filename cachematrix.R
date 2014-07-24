## Put comments here that give an overall description of what your
## functions do 
## cache the inversed matrix, then when we need to calculate a matrix use solve function, we can look for the cache first, then calculate the matrix depends on if the answer is already in the cache.


## Write a short comment describing this function
## Crest a matrix object that used to cache the
##matrix's inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function (y){
		    x <<- y
		    inv <<-NULL
	}
	get <- function () x
	setinv <- function(inverse) inv <<- inverse
	getinv <- function () inv
	list(set = set, get = get,setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## If the inversed matrix has already been calculated, then just search the inverse from the cache, If not, just calculate.

cacheSolve <- function(x, ...) {
	     inv <- x$getinv()
	     if(!is.null(inv)){
	     	      message("getting solved data")
	     	      return(inv)
	     }
	     data <- x$get()
	     inv <- solve(data, ...)
	     x$setinv(inv)
	     inv
        ## Return a matrix that is the inverse of 'x'
}
