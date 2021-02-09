
## Here I try to fullfil the task, by creating a function that first, creates a matrix and second, caches its inverse. 

makeCacheMatrix <- function(x= matrix()){
  j<- NULL
  set<- function(y){
    x <<- y
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse)j <<- inverse   
  getInverse <- function()j
  list(set = set, get = get)
  setInverse = setInverse
}

## Here I try to make a function that solves he inverse of the previous returned matrix. Because the inverse has already been calculated this function should just get the inverse from the cache. 

cacheSolve <- function(x, ...){
  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cache data")
    return(j)
  }
  m <- x$get()
  j <- solve(m, ...)
  x$setInverse(j)
  return(j)
}