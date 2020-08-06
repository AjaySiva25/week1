The exception of "[" operator.
 the "[" operator always returns the same object of the class
  but there is one exception.
  
> x <- matrix(1:6, 2, 3)
> x

     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6

> x[1,2] #we get a vector instead of a 1x1 matrix.
[1] 3

> x[1,2,drop = FALSE]  #using drop we get a 1x1 matrix.

     [,1]
[1,]    3