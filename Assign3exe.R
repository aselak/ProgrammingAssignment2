M <- matrix(c(1:9),3,3)
N <- solve(M)
V <- makeCacheMatrix(M)
S <- cacheSolve(V)


V <- makeCacheMatrix(c(1:9))


TEST <- makeVector(c(4:10))
TEST$getmean
cachemean(TEST)