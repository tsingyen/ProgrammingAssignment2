## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  x <- NULL 
  set <- function (y){
    x <<- y 
    m <<- NULL 
  }
get <- function() x
setmatrix <- function(matrix) m <<- matrix 
getmatrix <- function() m 
list(set=set, get=get, 
     setmatrix = setmatrix,
     getmatrix = getmatrix)

}

## This function computes the inverse of the speical "matrix" retruned by 
## makeCacheMatric above. If the inverse has adready been calculated (and the
## matrix has not changed), then cacheSolve should retrieve the inverse from 
## the cache

cacheSolve <- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<- x$get()
  m <- matrix(data,...)
  x$setmatrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}