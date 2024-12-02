// 防止头文件被重复包含
#ifndef SnavelyReprojection_H
#define SnavelyReprojection_H

#include <iostream>
#include "ceres/ceres.h"
#include "rotation.h"

// 重投影误差的核心类，计算三维点和二维像素坐标的误差
class SnavelyReprojectionError {
public:
    
    // 构造函数：存储观测到的像素坐标observation_x， observation_y
    SnavelyReprojectionError(double observation_x, double observation_y) : observed_x(observation_x),
                                                                           observed_y(observation_y) {}
    /*
    仿函数，Ceres在优化过程中计算误差的实现
        camera：相机参数数组，包含9个参数。
            [0-2]：旋转参数（角轴形式的旋转向量）。
            [3-5]：平移参数（世界坐标系到相机坐标系的平移量）。
            [6]：焦距。
            [7-8]：径向畸变参数（二阶和四阶）。
        point：三维点的坐标，表示为 (x,y,z)
        residuals：误差值数组，用于存储最终的2D投影误差
    */ 

    template<typename T>
    bool operator()(const T *const camera,  // 相机参数数组
                    const T *const point,  // 三维点的坐标
                    T *residuals) const {   
        // camera[0,1,2] are the angle-axis rotation
        T predictions[2];
        CamProjectionWithDistortion(camera, point, predictions);
        residuals[0] = predictions[0] - T(observed_x);
        residuals[1] = predictions[1] - T(observed_y);

        return true;
    }

    // camera : 9 dims array
    // [0-2] : angle-axis rotation
    // [3-5] : translateion
    // [6-8] : camera parameter, [6] focal length, [7-8] second and forth order radial distortion
    // point : 3D location.
    // predictions : 2D predictions with center of the image plane.
    template<typename T>
    static inline bool CamProjectionWithDistortion(const T *camera, const T *point, T *predictions) {
        // Rodrigues' formula
        T p[3];
        AngleAxisRotatePoint(camera, point, p);
        // camera[3,4,5] are the translation
        p[0] += camera[3];
        p[1] += camera[4];
        p[2] += camera[5];

        // Compute the center fo distortion
        T xp = -p[0] / p[2];
        T yp = -p[1] / p[2];

        // Apply second and fourth order radial distortion
        const T &l1 = camera[7];
        const T &l2 = camera[8];

        T r2 = xp * xp + yp * yp;
        T distortion = T(1.0) + r2 * (l1 + l2 * r2);

        const T &focal = camera[6];
        predictions[0] = focal * distortion * xp;
        predictions[1] = focal * distortion * yp;

        return true;
    }

    static ceres::CostFunction *Create(const double observed_x, const double observed_y) {
        return (new ceres::AutoDiffCostFunction<SnavelyReprojectionError, 2, 9, 3>(
            new SnavelyReprojectionError(observed_x, observed_y)));
    }

private:
    double observed_x;
    double observed_y;
};

#endif // SnavelyReprojection.h

