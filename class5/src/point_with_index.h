#pragma once
#include "static_vec.h"
#include <iostream>

namespace rp {
  using namespace std;
  
  using Vec3f=Vec_<float, 3>;

  // Data structure that can store the index and 3 coordinates 
  struct PointWithIndex {
    int index;
    Vec3f value;
  };

  //Writting operation of the structure
  istream& operator>>(istream& is, PointWithIndex& p){
    is >> p.index >> p.value.at(0) >> p.value.at(1) >> p.value.at(2);
    return is;
  }

  //Reading operation of the structure
  ostream& operator<<(ostream& os, const PointWithIndex& p){
    os << p.index << " "
       << p.value.at(0) << " "
       << p.value.at(1) << " "
       << p.value.at(2);
    return os;
  }
}
