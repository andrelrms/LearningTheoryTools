#
#   Testing GitHub
#
#


   n <- 495
   p <- 20
   x <- matrix(rnorm(n*p), nrow=n, ncol=p, byrow=TRUE)

   P <- 50
   d <- numeric(P-1)
   l <- 0

   for(p in 2:P)
   {
      l <- l + 1   
      x <- matrix(rnorm(n*p), nrow=n, ncol=p, byrow=TRUE)
      tm <- proc.time() 
      det(cov(x)) 
      d[l] <- (proc.time()-tm)[3]
      
   }   

   plot(2:P, d, type='l', main='Computational Complexity of determinant')

