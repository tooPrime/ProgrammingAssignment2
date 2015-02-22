## the makeCacheMatrix funciton has one argument for a matrix
## it then stores that matrix and it's inverse to be used later in the cacheSolve function


makeCacheMatrix <- function(x = matrix()) {

  cacheMatrix <<- x
  inverseMatrix <<- solve(x)
  
}


## the cacheSolve function has one argument for a matrix
## the funciton will return the inverse of that matrix
## if a cached version of the inverse exists, then it will return the cached version

cacheSolve <- function(x, ...) {
  
  
  if (identical(x, cacheMatrix))
    return(inverseMatrix)
  else
    return(solve(x))
       
}
