cmake_minimum_required(VERSION 3.0)
project(pearl_house)

# 设置编译选项
set(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS} -g)

# 设置可执行文件输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin/base_algorithm)

# 设置项目库文件输出路径
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib/base_algorithm)

# 配置可执行文件搜索路径
include_directories(${PROJECT_SOURCE_DIR}/src/base_algorithm/include)
include_directories(${PROJECT_SOURCE_DIR}/example/base_algorithm/include)

# 设置项目库文件搜索路径
link_directories(${PROJECT_SOURCE_DIR}/thirdlib)

# 配置子目录
add_subdirectory(src/base_algorithm)
add_subdirectory(example/base_algorithm)