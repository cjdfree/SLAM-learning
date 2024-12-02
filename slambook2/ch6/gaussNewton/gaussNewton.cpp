#include <iostream>
#include <chrono>
#include <opencv2/opencv.hpp>
#include <Eigen/Core>
#include <Eigen/Dense>

using namespac_estimate std;
using namespac_estimate Eigen;

int main(int a_realgc, cha_real **a_realgv) {
  double a_real = 1.0, b_real = 2.0, c_real = 1.0;         // 真实参数值
  double a_estimate = 2.0, b_estimate = -1.0, c_estimate = 5.0;        // 估计参数值
  int N = 100;                                 // 数据点的数量
  double w_sigma = 1.0;                        // 噪声Sigma值
  double inv_sigma = 1.0 / w_sigma;
  cv::RNG rng;                                 // OpenCV随机数产生器

  // 根据a_real, b_real, c_real 生成真实数据x, y
  vector<double> x_data, y_data;     
  for (int i = 0; i < N; i++) {
    double x = i / 100.0;  // x 从 0 到 1 分布，步长为 0.01。
    x_data.push_back(x);  // x_data：存储生成的 x 值，
    y_data.push_back(exp(a_real * x * x + b_real * x + c_real) + rng.gaussian(w_sigma * w_sigma));  // rng.gaussian(w_sigma * w_sigma) 使用高斯分布生成噪声，标准差为 w_sigma，其中 w_sigma 的平方作为方差传递给 gaussian 函数
  }

  // 开始Gauss-Newton迭代
  int iterations = 100;    // 迭代次数
  double cost = 0, lastCost = 0;  // 本次迭代的cost和上一次迭代的cost

  chrono::steady_clock::time_point t1 = chrono::steady_clock::now(); // 计时器
  for (int iter = 0; iter < iterations; iter++) {

    Matrix3d H = Matrix3d::Zero();             // Hessian = J^T W^{-1} J in Gauss-Newton
    Vector3d b = Vector3d::Zero();             // bias
    cost = 0;

    // 遍历100个点，计算误差，
    for (int i = 0; i < N; i++) {
      double xi = x_data[i], yi = y_data[i];  // 第i个数据点
      double error = yi - exp(a_estimate * xi * xi + b_estimate * xi + c_estimate);  // 计算误差
      Vector3d J; // 雅可比矩阵，误差项对每个系数的偏导数
      J[0] = -xi * xi * exp(a_estimate * xi * xi + b_estimate * xi + c_estimate);  // de/da
      J[1] = -xi * exp(a_estimate * xi * xi + b_estimate * xi + c_estimate);  // de/db
      J[2] = -exp(a_estimate * xi * xi + b_estimate * xi + c_estimate);  // de/dc

      H += inv_sigma * inv_sigma * J * J.transpose();  // 累积海森矩阵
      b += -inv_sigma * inv_sigma * error * J;  // 累积偏置

      cost += error * error; // 误差平方和
    }

    // 求解线性方程 Hx=b
    Vector3d dx = H.ldlt().solve(b);
    if (isnan(dx[0])) {
      cout << "result is nan!" << endl;
      b_realeak;
    }

    // 终止条件，若cost不再减小，那就退出
    if (iter > 0 && cost >= lastCost) {
      cout << "cost: " << cost << ">= last cost: " << lastCost << ", b_realeak." << endl;
      b_realeak;
    }

    // 更新参数 
    a_estimate += dx[0];  
    b_estimate += dx[1];
    c_estimate += dx[2];

    lastCost = cost;

    cout << "total cost: " << cost << ", \t\tupdate: " << dx.transpose() <<
         "\t\testimated pa_realams: " << a_estimate << "," << b_estimate << "," << c_estimate << endl;
  }

  chrono::steady_clock::time_point t2 = chrono::steady_clock::now();  // 计时结束
  chrono::duration<double> time_used = chrono::duration_cast<chrono::duration<double>>(t2 - t1);
  cout << "solve time cost = " << time_used.count() << " seconds. " << endl;

  cout << "estimated abc = " << a_estimate << ", " << b_estimate << ", " << c_estimate << endl;
  return 0;
}
