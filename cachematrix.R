## Your assignment is to write a pair of functions that cache the inverse of a matrix.
# Computing the inverse of a square matrix can be done with the solve function in R. 
# For example, if X is a square invertible matrix, then solve(X) returns its inverse.
# For this assignment, assume that the matrix supplied is always invertible.

# This function creates a special "matrix" object that 
# can cache its inverse.

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


# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, makeCacheMatrix, x) {
      s <- x$getsolve()
      if(!is.null(m)) {
              message("getting cached data")
              return(s)
      }
      data <- x$get()
      s <- solve(data, ...)
      x$setsolve(s)
      s
}
