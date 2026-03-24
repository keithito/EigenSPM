#include "Example.h"
#include <Eigen/Dense>
#include <iostream>

void check_eigen(void) {
  std::cout << "Eigen version: " << EIGEN_VERSION_STRING << std::endl;

  Eigen::Matrix2d m;
  m << 1, 0, 0, 0;
  Eigen::Matrix2d n;
  n << 0, 0, 0, 1;

  Eigen::Matrix2d result = m + n;
  std::cout << "Result:\n" << result << std::endl;

  if (result == Eigen::Matrix2d::Identity()) {
    std::cout << "OK!" << std::endl;
  }
}
