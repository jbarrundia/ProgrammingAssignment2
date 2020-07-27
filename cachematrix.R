## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  gl <- NULL
  set <- function(y) {
    x <<- y
    gl <<- NULL
  }
  get <- function() x
  setinv <- function(inv) gl <<- inv
  getinv <- function() gl
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)  

}


