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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  gl <- x$getinv()
  if(!is.null(gl)) {
    message("Ya calculada!!!")
    return(gl)
  }
  data <- x$get()
  gl <- solve(data, ...)
  x$setinv(gl)
  gl  
}
