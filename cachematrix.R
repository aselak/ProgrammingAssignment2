## Put comments here that give an overall description of what your
## functions do

# makeCacheMatrix will create a special function variable containing Matrix and
# user-functions for that can be performed on Matrix.  The setinverse function
# will attempt to create a inverse matrix by calling solve() function.
# It requires a "square" matrix as an input
makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
              x <<- y
              m <<- NULL
            }
            get <- function() {print(x)}
            setinverse <- function(solve) {m <<- solve(x)}
            getinverse <- function() {m}
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)

}


# cacheSolve will check for an cached version of the passed matrix.  If it exists,
# it will get cached version, otherwise it will invoke the calculation of inversematrix.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
