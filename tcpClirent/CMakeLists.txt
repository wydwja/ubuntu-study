cmake_minimum_required(VERSION 3.22)

# set the project name
project(tcpclirent)

# add the executable
#add_executable(tcpclirent main.cpp)
# 查找当前目录下的所有源文件
# 并将名称保存到 DIR_SRCS 变量
aux_source_directory(. DIR_SRCS)

# 指定生成目标
add_executable(tcpclirent ${DIR_SRCS})