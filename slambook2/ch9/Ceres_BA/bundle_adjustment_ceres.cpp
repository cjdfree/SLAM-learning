#include <iostream>
#include <ceres/ceres.h>
#include "common.h"  // 导入BALProblem类，包括common.h和common.cpp
#include "SnavelyReprojectionError.h"

using namespace std;

void SolveBA(BALProblem &bal_problem);

int main(int argc, char **argv) {
    if (argc != 2) {
        cout << "usage: bundle_adjustment_ceres bal_data.txt" << endl;
        return 1;
    }
    BALProblem bal_problem(argv[1]);  // 创建一个 BALProblem 对象，用来读取和管理捆绑调整问题的数据，包括相机参数、3D点和观测数据。
    bal_problem.Normalize();  // 对输入数据进行归一化
    bal_problem.Perturb(0.1, 0.5, 0.5);  // 对相机参数、3D点和观测数据施加小扰动，用于模拟更真实的初始条件
    bal_problem.WriteToPLYFile("initial.ply");  // 保存初始点云
    SolveBA(bal_problem);  // 求解BA问题
    bal_problem.WriteToPLYFile("final.ply");  // 保存优化后的点云

    return 0;
}

void SolveBA(BALProblem &bal_problem) {
    const int point_block_size = bal_problem.point_block_size();  
    const int camera_block_size = bal_problem.camera_block_size(); 
    double *points = bal_problem.mutable_points();  // 三维点坐标
    double *cameras = bal_problem.mutable_cameras();  // 相机坐标
    const double *observations = bal_problem.observations();  // 观测数据，[x,y]二维坐标
    ceres::Problem problem;  // 创建一个 ceres::Problem 对象，用于管理优化变量和残差

    for (int i = 0; i < bal_problem.num_observations(); ++i) {  // 遍历所有观测点
        ceres::CostFunction *cost_function;

        // 残差块计算：输入是一个二维的相机矩阵，输出是一个二维的残差
        cost_function = SnavelyReprojectionError::Create(observations[2 * i + 0], observations[2 * i + 1]);

        // 添加鲁棒核函数： 使用 HuberLoss 函数降低误差点的影响
        ceres::LossFunction *loss_function = new ceres::HuberLoss(1.0);  

        // 找到每个观测点对应的相机和三维点
        double *camera = cameras + camera_block_size * bal_problem.camera_index()[i];
        double *point = points + point_block_size * bal_problem.point_index()[i];

        // 将残差块添加到优化问题
        problem.AddResidualBlock(cost_function, loss_function, camera, point);
    }

    // show some information here ...
    std::cout << "bal problem file loaded..." << std::endl;
    std::cout << "bal problem have " << bal_problem.num_cameras() << " cameras and "
              << bal_problem.num_points() << " points. " << std::endl;
    std::cout << "Forming " << bal_problem.num_observations() << " observations. " << std::endl;
    std::cout << "Solving ceres BA ... " << endl;

    // 设置优化选项
    ceres::Solver::Options options;
    options.linear_solver_type = ceres::LinearSolverType::SPARSE_SCHUR;  // 使用ceres，线性求解方法LinearSolverType，稀疏矩阵的Schur消元进行求解
    options.minimizer_progress_to_stdout = true;  // 打印优化过程中的信息
    ceres::Solver::Summary summary;  // summary存储优化的详细结果，包括初始残差、最终残差、迭代次数、求解时间等
    ceres::Solve(options, &problem, &summary);  // 求解问题并保存求解器的结果
    std::cout << summary.FullReport() << "\n";  // 打印求解器的详细信息
}