# Build use the /usr camke because the version of conda cmake is too new (4.)
# 第三方库 DBoW2
cd Thirdparty/DBoW2
rm -rf build
mkdir build && cd build
/usr/bin/cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$CONDA_PREFIX
make -j4

# g2o
cd ~/codespace/ORB_SLAM3/Thirdparty/g2o
rm -rf build
mkdir build && cd build
/usr/bin/cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$CONDA_PREFIX
make -j4

# Sophus
cd ~/codespace/ORB_SLAM3/Thirdparty/Sophus
rm -rf build
mkdir build && cd build
/usr/bin/cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$CONDA_PREFIX
make -j4

# 主工程 ORB_SLAM3
cd ~/codespace/ORB_SLAM3
rm -rf build
mkdir build && cd build
/usr/bin/cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$CONDA_PREFIX
make -j4
