 
## makeCacheMatix creates a Matrix that can cache an inverse of a Matrix, cacheSolve calculates the inverse of a Matrix by calling the cache if the inverse is already ## calculated, if not it calculates the inverse

## 	The below function with create a special "Matrix" that can cache its inverse


makeCacheMatrix <- function(x = matrix()) {
	 	s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}




## calculates the inverse of the special "Matrix" returned above. If the inverse is already calculated then the cachesolve just retrives the value from cahce

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                s <- x$getmean()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setmean(s)
        s
}
