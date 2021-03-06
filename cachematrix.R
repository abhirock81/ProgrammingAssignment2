## Put comments here that give an overall description of what your
## functions do

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
   
   inv<-NULL;
   set<-function(y)
     { x<<-y
       inv<<-NULL
     }
  get<-function(){x}
   getinverse<-function()
  { inv}
      
   setinverse<-function(z){
      inv<<-z}
   list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## This function computes the inverse of the special "matrix" returned by 
##makeCacheMatrix above. If the inverse has already been calculated 
##then the cacheSolve function will retrieve the cached matrix.

cacheSolve <- function(x, ...) {
   a<-x$getinverse()
  if(!is.null(a)){
     return(a)
   }
   data<-x$get()
   inv<-solve(data)
   x$setinverse(inv)
   inv
}
