## Create a cache matrix and determine it's inverse

## Create a cache matrix.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<-y
    m <<- NULL
   }

  get <- function() x
  setinv <- function(invx) m <<- invx
  getinv <- function() m
  list(set = set, get=get,
       setinv = setinv,
       getinv = getinv)
}

## The following function calculated the inverse of the special
## "matrix" created with the above function.However, it first
## checks to see if the inverse has already been calculated.  If so
## it gets the inverse from the cache and skips the computation.
## Otherwise it calculates the mean of the data and sets
## the value of the inverse in the cache via the setinv function.

cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if (!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data <- x$get()
  
        m <- solve(x)
        x$setinv(m)
        m
        print(m)
}

