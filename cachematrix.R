##The folloiwng functions are required for the 
##Coursera Programming Course Assignment 2.

##The functions are as follows:
## 1. makeCacheMatrix: This function creates a special "matrix" object that 
##    can cache its inverse.
## 2. cacheSolve: This function computes the inverse of the special "matrix" 
##    returned by makeCacheMatrix above. 
##    If the inverse has already been calculated (and the matrix has not 
##    changed), then the cachesolve should retrieve the inverse from the cache.


## This 'makeCacheMatrix' function creates a special "matrix" object that can 
## cache its inverse, which is a list containing a function to 
## 1. set the invertible square matrix and assign it to the cache
## 2. get the invertible square matrix
## 3. set the inverse of the matrix
## 4. get the inverted matrix
makeCacheMatrix <- function(x = matrix()) {
        
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
        
        
}


## This 'cacheSolve' function will
## 1. Check if the inverse of the matrix is already in the cache and return the 
##    result from the cache 
## 2. If the cache is empty this is will calculate the inverse of the matrix 
##    and store that in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m        
}
