## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

 ## Initialization
 j <- NULL
 
 ##Ser the matrix
 set<- function(matriz) {
 	m<<- matrix
 	j<< NULL
 }

## Get the matrix
get<- function () {
	##Return the matrix
	m
}

##Inverse of the matrix
setInverse<- function(inverse){
	j<<- inverse
}

##Inverse of the matrix
gerInverse <- function(){
	#Returns the inverse
	j
}

##Returns a list of methods
list(set=set, get=get,
     SetInverse=SetInverse, getInverse=getInverse)
 }





## Inverse of the matrix retuned by "makeCacheMatrix"


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getInverse()
        
        ##Return the inverse if its already set
        if(!is.null(m)) {
        	message("getting cached data")
        	return(m)
        }
        
        ##Get the matrix from our object
        data <- x$get()
        
        ##Set the inverse to object
        x$setInverse(m)
        
        ##Returns the matrix
        m
}


##example

## m <- matrix(rnom(16),4,4)
## m1 <- makeCacheMatrix(m)
## cacheSolve(m1)




