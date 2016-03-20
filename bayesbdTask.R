#Author: Abhinav Agarwal, aagarwal DOT gtr AT gmail DOT com
#install package Rcpp if not found
if(!require(Rcpp)) {
  install.packages("Rcpp")
  library(Rcpp)
}

#simple C++ function which sums natural numbers till and including n
cppFunction('int func1(int n) {
  int i, sum = 0;
  for(i = 1; i <= n; i++)
    sum += i;
  return sum;
}')

#call to the C++ function
func1(10)

#alternatively use this function to source the code from the cpp file
#which contains the definition of func2() multiplying natural numbers till and including n
sourceCpp("func2.cpp")
func2(10)
