cmake_minimum_required(VERSION 3.10)
project(sockets_toy)

set(CMAKE_CXX_STANDARD 11)

add_executable(ntop_toy inect_fun/ntop_toy.cpp)

add_executable(ntop6_toy inect_fun/ntop6_toy.cpp)

add_executable(host_byte_order lib/config.h lib/unp.h host_byte_order/host_byte_order.cpp)

