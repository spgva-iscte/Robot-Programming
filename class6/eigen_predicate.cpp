#include "eigen_01_point_loading.h"
#include <iostream>
#include <fstream>

using namespace std;
using namespace std;

template <typename PointType_>
struct PlaneSidePredicate_ {
  EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
  using PointType = PointType_;
  PointType _m; // store m;
  PointType _n; // store n;
  PlaneSidePredicate_(const PointType& m_,
                      const PointType& n_):
    // TODO: hmmmm
    _m(m_), 
    _n(n_){}
  
  
  inline bool operator()(const PointType& p) const {
    //TODO: fillme
    return (p-_m).dot(_n) > typename PointType::Scalar(0);
   }
};

template <typename IteratorType_, typename PredicateType_>
IteratorType_ split(IteratorType_ begin,
                    IteratorType_ end,
                    PredicateType_ predicate) {
  using ValueType    = typename IteratorType_::value_type;
  auto lower=begin;
  auto upper=std::make_reverse_iterator(end); 
  while (lower!=upper.base()) {
    ValueType& v_lower=*lower;
    ValueType& v_upper=*upper;
    if ( predicate(v_lower) ){
      ++lower;
    } else {
      std::swap(v_lower,v_upper);
      ++upper;
    }
  }
  return upper.base();
}


int main(int argc, char** argv) {
  if (argc<2)
    return -1;

  std::ifstream is(argv[1]);
  Vector3fVector points;
  Vector3f m;
  m.setZero();
  Vector3f n;
  n<<0,0,1; // split along z
  
  int num_points = loadPoints(points, is);
  cerr << "I read" << num_points << "from the stream " << endl;

  split(points.begin(), points.end(), PlaneSidePredicate_<Vector3f>(m, n));
  savePoints(cout, points);
  
  return 0;
}

