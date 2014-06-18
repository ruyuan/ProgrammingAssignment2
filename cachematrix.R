## Create a special object that stores a matrix
## and cache's its mean

## Create a special matrix, set the value of matrix, get the value of matrix
## Set the value of the inversematrix. Get the value of the inversematrix

makeCacheMatrix <- function(x = matrix()) {
       i <- NULL
       set <- function(y) {
             x <<- y
             i <<- NULL
}
       get <- function() x
       setsolve <- function(solve) i<<- solve
       getsolve <- function() i
       list(set = set , get = get,
            setsolve = setsolve,
            getsolve = getsolve)
}

## Calculate the inversematrix of the special matrix

cacheSolve <- function(x, ...) {
       i<-x$getsolve()
       if(!is.null(i)){
               message("getting cached data")
               return(i)
        }
       data<-x$get()
       i<- solve(data, ...)
       x$setsolve(i)
       i
        ## Return a matrix that is the inverse of 'x'
}
