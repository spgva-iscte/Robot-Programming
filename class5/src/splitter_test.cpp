#include "point_with_index.h"
#include <list>
#include <fstream>
#include <algorithm>
#include <cassert>
#include "splitter.h"

using namespace rp;
using namespace std;
//using PointWithIndexList=std::list<PointWithIndex>;

struct isOdd{
  //bool operator()(const PointWithIndex& p){
  bool operator()(const int& p){
    return p%2;
    //return p.index%2;
  }
};

int main(int argc, char** argv) {
  assert(argc>1);
  ifstream is(argv[1]);
  list<int> points;
  //PointWithIndexList points;
  while (is) {
    //PointWithIndex p;
    int p;
    is >> p;
    if (is) {
      points.push_back(p);
    }
  }
  cerr << "loaded " << points.size()
       << " points from file [" << argv[1] << "]" << endl;
  split(points.begin(), points.end(), isOdd());

  for(const auto& p: points)
    cerr << p << endl;
  
}
