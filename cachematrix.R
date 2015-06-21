## The function makeCacheMatrix holds the cache of the Matrix. The function cacheSolve is used for 
##checking whether the inverse of a Matrix is present


makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y)
	{ ##Sets the input matrix to x variable and inverse object variable to null
		x<<-y
		m<<-NULL
	}
	get<-function() x ##Displays the matrix which serves as an input to the set function
	setinverse<-function(solve) m<<-solve ##Solve calculates the inverse of the matrix and is scoped to m
		
	getinverse<-function() m ##Displays the inverse of the matrix
	list(set=set, get=get, ##Used for calling the indivdual functions.(In case of lexical scoping)
	      setinverse=setinverse,
	      getinverse=getinverse)
	      
}




## ## This function calculates the invesre of a Matrix. Initially it checks whether there is invrse already calculated,
##If so, it will display the solution. If a completely new matrix is given as an input then an inverse will be calculated.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        

	m<-x$getinverse()##Gets the inverse of the matrix and stores it in m
	if(!is.null(m)) ##Checking whether the inverse is already calculated. If yes, then the data will be taken out from the cache
	{
		message("getting cached data")
		return(m)
	}
	data<-x$get()	##If the inverse is not calculated solve function will be used to calculate the inverse. It will be stored in m
	m<-solve(data)
	x$setinverse(m)##Setting the inverse by using lexical scoping
	
    m



}
