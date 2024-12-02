#include <iostream>
#include <vector>
#include <algorithm>
#include <Eigen/Core>
#include <Eigen/Geometry>

using namespace std;
using namespace Eigen;

int main(int argc, char** argv) {
  Quaterniond q1(0.35, 0.2, 0.3, 0.1), q2(-0.5, 0.4, -0.1, 0.2);  // 四元数表示空间坐标
  q1.normalize();  // 四元数归一化
  q2.normalize();
  Vector3d t1(0.3, 0.1, 0.1), t2(-0.1, 0.5, 0.3); // 三维向量，表示平移
  Vector3d p1(0.5, 0, 0.2);  // 相机坐标系下某点

  Isometry3d T1w(q1), T2w(q2);  // 位姿
  // 创建两个 Isometry3d 对象 T1w 和 T2w，分别表示两个相机的位姿，即变换矩阵。
  // Isometry3d 表示 3D 空间中的刚体变换（包含旋转和平移）。
  // T1w 和 T2w 使用四元数 q1 和 q2 初始化，并调用 pretranslate 方法将平移量 t1 和 t2 加入。
  T1w.pretranslate(t1);  
  T2w.pretranslate(t2);

  Vector3d p2 = T2w * T1w.inverse() * p1;  // b=T1T2a
  cout << endl << p2.transpose() << endl;
  return 0;
}