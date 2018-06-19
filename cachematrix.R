## Caches and returns the inverse of a matrix.

## Returns a list of functions to:
##  1. set matrix object
##  2. retrieve matrix object
##  3. set inverse of matrix object
##  4. reurn inverse of matrix object

makeCacheMatrix <- function(x = matrix()) {

  inverse <- NULL
  
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  get <- function() x
  
  setInverse <- function(z) inverse <<- z
  getInverse <- function() inverse
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Returns the inverse of the matrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inv <- x$getInverse()
  
  if (is.null(inv)) x$setInverse(solve(x$get()))
  
   x$getInverse()
  
  
}



    
