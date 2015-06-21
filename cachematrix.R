## The function makeCacheMatrix holds the cache of the Matrix. The function cacheSolve is used for 
##checking whether the inverse of a Matrix is present

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y)
	{
		x<<-y
		m<<-NULL
	}
	get<-function() x
	setinverse<-function(solve) m<<-solve
		
	getinverse<-function() m
	list(set=set, get=get,
	      setinverse=setinverse,
	      getinverse=getinverse)
	      
}




## ## This function calculates the invesre of a Matrix. Initially it checks whether there is invrse already calculated,
##If so, it will display the solution. If a completely new matrix is given as an input then an inverse will be calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
