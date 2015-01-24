########################################
##########R programming course##########
########################################
#################Coursera###############
#Assignment 2 - Peer review
########################################
#date:24/01/2014
########################################
#Code created by:Kristina1987
########################################

## The following finction 
#sets the value of the matrix
#gets the value of the matrix
#sets its inverse
#gets inverse
#function names: set, get, setInverse, getInverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) m <<- solve
  getInverse <- function() m
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


#The following function checks whether there is an existing
#value in the cahce memory of the matrix inversion function
cacheSolve <- function(x, ...)
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
## Return a matrix that is the inverse of 'x'
  m  
}

#----------------------------------------------------
#example
B = matrix(c(2, 4, 3, 1), nrow=2,ncol=2)
myMatrix <- makeCacheMatrix(B)
cacheSolve(myMatrix)
#in the case there is already the result
cacheSolve(myMatrix)