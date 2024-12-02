#include <iostream>
#include <cmath>
#include <Eigen/Core>
#include <Eigen/Geometry>
#include "sophus/se3.hpp"

using namespace std;
using namespace Eigen;

/// 本程序演示sophus的基本用法

int main(int argc, char **argv) {

  Matrix3d R = AngleAxisd(M_PI / 2, Vector3d(0, 0, 1)).toRotationMatrix();  // 创建一个沿Z轴旋转90度的旋转矩阵
  Quaterniond q(R);  // 将旋转矩阵R用四元数表示
  // 构造群对象SO(3)：SO3_R 和 SO3_q 分别使用旋转矩阵 R 和四元数 q 构造
  Sophus::SO3d SO3_R(R);              
  Sophus::SO3d SO3_q(q);              
  // 二者是等价的
  cout << "SO(3) from matrix:\n" << SO3_R.matrix() << endl;
  cout << "SO(3) from quaternion:\n" << SO3_q.matrix() << endl;

  // 使用对数映射获得它的李代数
  Vector3d so3 = SO3_R.log();
  cout << "so3 = " << so3.transpose() << endl;
  cout << "so3 hat=\n" << Sophus::SO3d::hat(so3) << endl;  // hat：将向量转化为反对称矩阵
  cout << "so3 hat vee= " << Sophus::SO3d::vee(Sophus::SO3d::hat(so3)).transpose() << endl;  // vee：将反对称矩阵还原为向量

  // 增量扰动模型的更新
  Vector3d update_so3(1e-4, 0, 0); //假设更新量
  Sophus::SO3d SO3_updated = Sophus::SO3d::exp(update_so3) * SO3_R;
  cout << "SO3 updated = \n" << SO3_updated.matrix() << endl;  // 用指数映射增量 update_so3 更新旋转。更新后的 SO(3) 旋转矩阵存储在 SO3_updated 中。
  cout << "*******************************" << endl;

  // 对SE(3)操作大同小异
  Vector3d t(1, 0, 0);           // 沿X轴平移1
  Sophus::SE3d SE3_Rt(R, t);           // 从R,t构造SE(3)
  Sophus::SE3d SE3_qt(q, t);            // 从q,t构造SE(3)
  cout << "SE3 from R,t= \n" << SE3_Rt.matrix() << endl;
  cout << "SE3 from q,t= \n" << SE3_qt.matrix() << endl;
  // 李代数se(3) 是一个六维向量，方便起见先typedef一下
  typedef Eigen::Matrix<double, 6, 1> Vector6d;
  Vector6d se3 = SE3_Rt.log();
  cout << "se3 = " << se3.transpose() << endl;
  // 观察输出，会发现在Sophus中，se(3)的平移在前，旋转在后.
  // 同样的，有hat和vee两个算符
  cout << "se3 hat = \n" << Sophus::SE3d::hat(se3) << endl;  
  cout << "se3 hat vee = " << Sophus::SE3d::vee(Sophus::SE3d::hat(se3)).transpose() << endl;  

  // 最后，演示一下更新
  Vector6d update_se3; //更新量
  update_se3.setZero();
  update_se3(0, 0) = 1e-4;
  Sophus::SE3d SE3_updated = Sophus::SE3d::exp(update_se3) * SE3_Rt;
  cout << "SE3 updated = " << endl << SE3_updated.matrix() << endl;

  return 0;
}
