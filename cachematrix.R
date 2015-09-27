## These two functions calculate the inverse of a matrix while caching it. The function makeCachematrix creates a matrix 

## makeCachematrix is a function to create a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
makeCacheMatrix <- function(x = matrix())
m <- NULL
set <- function(y) {
  x <<- y 
  m <<- NULL
}
get<-function()x
setInverse<-function(i)inv<<-1
getInverse<-function()inv
list(set=set,get=get,setInverse=setInverse,getInverser=getInverse)

}


## this function inverts the cached matrix, if it has not been done already

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getInverse()
        ##if it has not been cached already
        if(!is.null(m)) 
        {
        	message("getting cached data")  
        	return(m)
        }
        ##gets the matrix
        data<-x$get
        ## sets m to inverse of the fetched matrix
        m<- solve(data,...)
        x$setinverse(m)
        m  
}
