## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inverse_matrix <- NULL
  set <- function(y) {
    x <<- y
    inverse_matrix <- NULL
  }
  get_matrix <- function() x
  get_invmatrix <- function() {
    inverse_matrix
  }
  set_invmatrix <- function(inverted_matrix) inverse_matrix <<- inverted_matrix
  list(set=set, get_matrix=get_matrix, get_invmatrix=get_invmatrix, set_invmatrix=set_invmatrix)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  if (!is.null(x$get_invmatrix())) {
    message("getting cached data")
    x$get_invmatrix()
  } else {
    cached_matrix <- x$get_matrix()
    inverted <- solve(cached_matrix)
    x$set_invmatrix(inverted)
    inverted
  }
  
}
