#include <iostream>

#include "base_algorithm.hpp"

int main(int argc, char **argv) {
  vector<int> arr = {2, 43, 4, 34, 2, 31, 3};
  base_algorithm();
  base_algorithm.fast_sort(arr);
  return 0;
}