## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function makes a special matrix on which we can perform 4 different functions as shown Below
makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set<-function(y){
    x<<-y
    i<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) i<<-inverse
  getinverse<-function() i
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
    

}


## Write a short comment describing this function
## The function below gets the inverse for the special matrix created above

cacheSolve <- function(x, ...) {
  i<-x$getinverse()
  if(!is.null(i))
  {
    message("getting cached data")
    return(i)
  }
  data<-x$get()
  i<-solve(data)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
