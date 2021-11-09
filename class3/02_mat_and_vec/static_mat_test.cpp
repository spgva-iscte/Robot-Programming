#include <iostream>
#include "static_mat.h"
#include <unistd.h>
using namespace rp;
using namespace std;

using Vec3f=Vec_<float, 3>;
using Mat3f=Mat_<float, 3,3>;
using Mat3_4f=Mat_<float, 3,4>;

int main() {

  // TODO FILL_HERE_THE_STUFF_FOR_EXERCISE_1
  Mat_<float,3,2> A;
  randFill(A);

  Mat_<float,2,3> B;
  randFill(B);

  Mat_<float,3,3> C;
  randFill(C);

  Mat_<float,3,1> v;
  randFill(v);

  Mat_<float,3,3> x;
  for (int i=0; i<1000000; ++i)
    x = C*(A*B+v*v.transpose());

  cout << x;
}

