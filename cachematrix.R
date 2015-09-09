## Put comments here that give an overall description of what your
## functions do
#1. makeCacheMatrix define function and variables for matrix x
#2. cacheSolve return the inverse matrix of the given matrix x

## Write a short comment describing this function
#makeCacheMatrix create a special "matrix“ which is 
#really a list containing a function to
#1. set: set the value of the matrix
#2. get: get the value of the matrix
#3. setsolve: set the inverse of the matrix
#4. getsolve: get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
    m<-NULL #variable stored the inverse matrix of x
    set <- function(y){
        x <<- y
        m <<-NULL
    }
    
    get<-function() x
    
    setsolve <- funtion(solve) m <<- solve
    getsolve <- funciton() m
    list(set = set, get = get,  
         setsolve = setsolve,
         getsolve = getsolve)
}

## Write a short comment describing this function
#the following function return the inverse matrix of x
#it first using getsolve() to check if the inverse has already exist
#if not, calculate inverse matrix by solve() and 
#set it as inverse matrix of x by setsolve() then return
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getsolve()
    if(!is.null(m)){
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data,... )
    x$setsolve(m)
    m
}

