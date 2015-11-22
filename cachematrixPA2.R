## Put comments here that give an overall description of what your 
## functions do 
 
 
## save the matrix passed through the argument and the functions needed to 
## set and get the inverse matrix
## similar to the example given in the assignment

makeCacheMatrix <- function(x = matrix()) { 
        myInv <- NULL
        set   <- function(y) {
                x <<- y
                myInv <<- NULL
        }
        get        <- function() x
        setInverse <- function(myInverse) myInv <<- myInverse
        getInverse <- function() myInv
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse) 
 
} 
 

## Return a matrix that is the inverse of 'x'  
## if the cached inverse matrix does not exist, calculate & cache & return it
## if it exists, return it and print "getting cached inverse matrix"
 
cacheSolve <- function(x, ...) { 
         
        myInv <- x$getInverse()
        if(!is.null(myInv)) {
                message("getting cached inverse matrix")
                return(myInv)
        }
        data <- x$get()
        myInv <- solve(data)
        x$setInverse(myInv)
        myInv        
} 
 
## test case 
## a <- matrix(1:4, nrow=2, ncol=2)
## b <- makeCacheMtrix(a)
## cacheSolve(b)


