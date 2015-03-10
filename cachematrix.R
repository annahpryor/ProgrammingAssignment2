## Create a cache matrix and determine it's inverse

## Create a cache matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<-y
    m <<- NULL
   }



get <- function() x


## Return a matrix that is the inverse of x

cacheSolve <- function(x, ...) {
        invx <- solve(x)
        invx
}

getcacheSolve <- function()invx
list(set = set, get = get,
     cacheSolve = cacheSolve,
     getcacheSolve = getcacheSolve)
}
