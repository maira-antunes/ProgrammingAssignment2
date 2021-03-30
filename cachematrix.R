## Put comments here that give an overall description of what your
## functions do
## Maíra: this assignment is to write a pair of functions that
##cache the inverse of a matrix.


## Write a short comment describing this function
## 1. 'makeCacheMatrix' is a function that creates a special "matrix" object
##that can cache its inverse.
## 2. I used the course function and adapted it with the solve() function, 
## which is used to compute the inverse of a square matrix.

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set <- function(y) {
      x <<- y
      a <<- NULL
  }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
        setsolve = setsolve,
        getsolve = getsolve)
}


## Write a short comment describing this function

## 3. 'cacheSolve' is a function that computes the inverse of the special "matrix"
## returned by makeCacheMatrix above.
## 4. it will Return a matrix that is the inverse of 'x'
## 5. I used the function given in the course example and adapted it.

cacheSolve <- function(x, ...) {
  a <- x$getsolve()
  if(!is.null(a)) {
    message("getting inverse matrix of x")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setsolve(a)
  a
}
