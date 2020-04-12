## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	mat<-NULL
	set<-function(y){ #set the matrix value
		x<<-y
		mat<<-NULL
		}
	get<-function()x #get the matrix value
	setInverse<-function(inverse) mat<<-inverse #set invertible matrix value
	getInverse<-function() mat #get invertible matrix value.
	list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mat<-x$getInverse() #obtain the value of invertible function from makecache matrix
	if(!is.null(mat)){ #if the matrix is not null,return invertible matrix.
		message("getting cached data")
		return(mat)
		}
	matric<-x$get() #collect original matrix data
	mat<-solve(matric,...) #inverse the matrix
	x$setInverse(mat)
	mat #return the invertible matrix

}
