#include <iostream>
#include "mat_f.h"
using namespace std;

int main() {

  // TODO: fill here the stuff required for exercise 1
  MatF A(3,2);
  A.randFill();

  MatF B(2,3);
  B.randFill();

  MatF C(3,3);
  C.randFill();

  MatF v(3,1);
  v.randFill();

  MatF x;
  for (int i=0; i<1000000; ++i)
    x = C*(A*B+v*v.transpose());

  cout << x;

}
