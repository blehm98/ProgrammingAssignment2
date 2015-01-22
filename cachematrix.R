##   makeCacheMatrix takes a matrix and caches both that matrix and its inverse
##   cacheSolve takes a matrix and checks whether it is the same matrix
##   that has its inverse cached.  If it is not cached, it inverts the new matrix
##   and caches it under a separate object


makeCacheMatrix <- function(matrix) {
  ##you can specify your own matrix in-function or pre-define object 'matrix'
  ## try makeCacheMatrix( c(1:5, 10:7), 3, 3) if uncreative
  m1 <<- matrix ##caches matrix
  m1i <<- solve(m1) ##caches m1's inverse
  print("matrix is now cached as 'm1', and its inverse as 'm1i'")
}

cacheSolve <- function(matrix) {
  ##can use same predefined matrix or a different one
  if(all.equal(matrix, m1) == TRUE) {
    print("Inverse is already cached as object 'm1i'")
    ## checks if we need to recalculate the inverse for the input matrix
    ## if we don't need to recalculate the inverse it lets you know
  } else {
    m2i <<- solve(matrix) ##caches the new inverse without overwriting the old inverse
    print('inverse of input matrix is now cached as 'm2i'")
    ##recalculate inverse as m2i if the matrix supplied here is different than that used to make
    ##m1i
  }
}