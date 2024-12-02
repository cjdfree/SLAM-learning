# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build

# Include any dependencies generated for this target.
include CMakeFiles/pointcloud_mapping.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pointcloud_mapping.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pointcloud_mapping.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pointcloud_mapping.dir/flags.make

CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o: CMakeFiles/pointcloud_mapping.dir/flags.make
CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o: /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/pointcloud_mapping.cpp
CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o: CMakeFiles/pointcloud_mapping.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o -MF CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o.d -o CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o -c /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/pointcloud_mapping.cpp

CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/pointcloud_mapping.cpp > CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.i

CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/pointcloud_mapping.cpp -o CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.s

# Object files for target pointcloud_mapping
pointcloud_mapping_OBJECTS = \
"CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o"

# External object files for target pointcloud_mapping
pointcloud_mapping_EXTERNAL_OBJECTS =

pointcloud_mapping: CMakeFiles/pointcloud_mapping.dir/pointcloud_mapping.cpp.o
pointcloud_mapping: CMakeFiles/pointcloud_mapping.dir/build.make
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_alphamat.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_barcode.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_cvv.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_intensity_transform.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_mcc.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_rapid.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_wechat_qrcode.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_apps.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_outofcore.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_people.so
pointcloud_mapping: /usr/lib/libOpenNI.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libOpenNI2.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libflann_cpp.so.1.9.2
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.6.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_surface.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_keypoints.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_tracking.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_recognition.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_registration.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_stereo.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_segmentation.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_features.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_filters.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_ml.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_visualization.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_search.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_kdtree.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_io.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_octree.so
pointcloud_mapping: /usr/lib/gcc/x86_64-linux-gnu/13/libgomp.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpthread.a
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpng.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libz.so
pointcloud_mapping: /usr/lib/libOpenNI.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libOpenNI2.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkChartsCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkInteractionImage-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkViewsCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkGUISupportQt-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkIOCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libfreetype.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkImagingSources-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkIOImage-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingUI-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkkissfft-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libGLEW.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libX11.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.15.13
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.13
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.13
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.13
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libtbb.so.12.11
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libvtksys-9.1.so.9.1.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libpcl_common.so
pointcloud_mapping: /home/cjd/anaconda3/lib/libboost_system.so.1.82.0
pointcloud_mapping: /home/cjd/anaconda3/lib/libboost_filesystem.so.1.82.0
pointcloud_mapping: /home/cjd/anaconda3/lib/libboost_atomic.so.1.82.0
pointcloud_mapping: /home/cjd/anaconda3/lib/libboost_iostreams.so.1.82.0
pointcloud_mapping: /home/cjd/anaconda3/lib/libboost_serialization.so.1.82.0
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/liblz4.so
pointcloud_mapping: /usr/lib/x86_64-linux-gnu/libqhull_r.so.8.0.2
pointcloud_mapping: CMakeFiles/pointcloud_mapping.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pointcloud_mapping"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pointcloud_mapping.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pointcloud_mapping.dir/build: pointcloud_mapping
.PHONY : CMakeFiles/pointcloud_mapping.dir/build

CMakeFiles/pointcloud_mapping.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pointcloud_mapping.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pointcloud_mapping.dir/clean

CMakeFiles/pointcloud_mapping.dir/depend:
	cd /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build /home/cjd/Documents/SLAM-Code/slambook2/ch12/dense_RGBD/build/CMakeFiles/pointcloud_mapping.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/pointcloud_mapping.dir/depend

