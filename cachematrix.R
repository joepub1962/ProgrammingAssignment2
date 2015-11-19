## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 ivmx <- NULL
  set <- function(y) {
    x <<- y
    ivmx <<- NULL
  }
  get <- function() x
  setinversematrix <- function(inversematrix) ivmx <<- inversematrix
  getinversematrix <- function() ivmx
  list(set = set, get = get,
      setinversematrix = setinversematrix,
      getinversematrix = getinversematrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 ## Return a matrix that is the inverse of 'x'
  inversematrix <- x$getinversematrix()
  if(!is.null(inversematrix)) {
    message("getting cached data")
    return(inversematrix)
  }
  data <- x$get()
  inversem <- solve(data, ...)
  x$setinversematrix(inversem)
  inversem}
