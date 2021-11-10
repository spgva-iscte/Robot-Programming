#include <fstream>
#include <vector>
#include <iostream>
#include <cassert>
#include <algorithm>

using namespace std;

using IntVector=std::vector<int>;

int main(int argc, char** argv) {
  assert(argc>2);
  ifstream is(argv[1]);
  IntVector values;
  while (is.good()) {
    //TODO: load the values
    int i;
    is >> i;
    if (is.good())
      values.push_back(i);
  }
  std::sort(values.begin(), values.end());
  // TODO: print the values
  for (const auto& v: values)
    cout << v << endl;
}
