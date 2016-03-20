#include <Rcpp.h>

using namespace Rcpp;
// [[Rcpp::export]]
int func2(int n) {
  int i, sum = 1;
  for(i = 1; i <= n; i++)
    sum *= i;
  return sum;
}