## Coursera R-Programming Week 3
## Programming Assignment 2 (Lexical Scoping)
## Pair of Functions that Cache the inverse of a Matrix

## Part 1 - makeCacheMatrix
## The following function creates a matrix that can cache it's Inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(x){
        mat <<- x
        inv <<- NULL
        }
get <- function() mat
setinv <- function(inverse) inv <<- inverse
getinv <- function() inv
return(list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Part 2 - cacheSolve
## This function provides the computation for the inverse of the 
## matrix returned by the prior function

cacheSolve <- function(mat, ...) {
inv <- mat$getinv()
if(!is.null(inv)){
message("Getting Cached Data.")
return(inv)
 }
 data <- mat$get()
 inv <- solve(data, ...)
 mat$setinv(inv)
 return(inv)
}
