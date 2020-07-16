## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
This function takes the matrix as its argument and initially sets the inverse as null.
When set() is called, it assigns the new value to x, and assigns x inverse to null
It returns a list to its parent environment


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinv <- function(inv) i <<- inv
	getinv <- function() i
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}




## Write a short comment describing this function
This function gets the argument and checks if inverse of matrix is already assigned
If inverse is present, it simply returns the value
Else it solves and assigns the inverse through setinv() function and returns inverse.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinv()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinv(i)
	i

}
