#pragma once

/// 从文件读入BAL dataset
class BALProblem {
public:
    /// load bal data from text file
    explicit BALProblem(const std::string &filename, bool use_quaternions = false);

    ~BALProblem() {
        delete[] point_index_;
        delete[] camera_index_;
        delete[] observations_;
        delete[] parameters_;
    }

    /// 公有方法
    void WriteToFile(const std::string &filename) const;  // 保存txt文件 
    void WriteToPLYFile(const std::string &filename) const;  // 保存ply文件
    void Normalize();  // 数据归一化
    void Perturb(const double rotation_sigma,
                 const double translation_sigma,
                 const double point_sigma);  // 对数据添加扰动


    int camera_block_size() const { return use_quaternions_ ? 10 : 9; }

    int point_block_size() const { return 3; }

    int num_cameras() const { return num_cameras_; }

    int num_points() const { return num_points_; }

    int num_observations() const { return num_observations_; }

    int num_parameters() const { return num_parameters_; }

    const int *point_index() const { return point_index_; }

    const int *camera_index() const { return camera_index_; }

    const double *observations() const { return observations_; }

    const double *parameters() const { return parameters_; }

    const double *cameras() const { return parameters_; }

    const double *points() const { return parameters_ + camera_block_size() * num_cameras_; }

    /// camera参数的起始地址
    double *mutable_cameras() { return parameters_; }
    double *mutable_points() { return parameters_ + camera_block_size() * num_cameras_; }
    double *mutable_camera_for_observation(int i) {
        return mutable_cameras() + camera_index_[i] * camera_block_size();
    }
    double *mutable_point_for_observation(int i) {
        return mutable_points() + point_index_[i] * point_block_size();
    }
    const double *camera_for_observation(int i) const {
        return cameras() + camera_index_[i] * camera_block_size();
    }
    const double *point_for_observation(int i) const {
        return points() + point_index_[i] * point_block_size();
    }

private:
    void CameraToAngelAxisAndCenter(const double *camera,
                                    double *angle_axis,
                                    double *center) const;

    void AngleAxisAndCenterToCamera(const double *angle_axis,
                                    const double *center,
                                    double *camera) const;

    int num_cameras_;  // 相机数量
    int num_points_;  // 三维点的数量 
    int num_observations_;  // 观测点的数量
    int num_parameters_;  // 观测点的参数
    bool use_quaternions_;  // 是否使用四元数 

    int *point_index_;      // 每个observation对应的point index
    int *camera_index_;     // 每个observation对应的camera index
    double *observations_;
    double *parameters_;
};
