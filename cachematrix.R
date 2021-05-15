## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a matrix that can also store a cache of its inverse
makeCacheMatrix <- function(x = matrix()) {
#This function only seems to works if you use the matrix function it it!
	  s <- NULL
  set <- function(y = matrix()) {
	         x <<- y
         s <<- NULL
	       }
    #Unclear whether set is needed for this assignment, the function works without
    #it, but adding it for good measure.
        get <- function() x
        set_inverse <- function(solve) s <<- solve
	      get_inverse <- function() s
	  list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## Write a short comment describing this function
#This function can both estimate the inverse of a matrix, cache the inverse back in the appropriate matrix object, and retrieve the cached inverse matrix when used again
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	s <- x$get_inverse()
	  if(!is.null(s)){
		      message("A ready-made inverted matrix is coming!")
	    return(s)
	      }
	  data <- x$get()
	    s <- solve(data,...)
	    x$set_inverse(s)
	      s
}
