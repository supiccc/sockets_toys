cmake_minimum_required(VERSION 3.10)
project(sockets_toy)

set(CMAKE_CXX_STANDARD 11)

set(UNPINC_DIR lib)
set(UNPLINK_DIR include)
include_directories(${UNPLINK_DIR}) # 添加头文件搜索目录
link_directories(${UNPINC_DIR}) # 添加库文件搜索目录
link_libraries(unp) # 搜索unp库


add_executable(ntop_toy src/inect_fun/ntop_toy.cpp)

add_executable(ntop6_toy src/inect_fun/ntop6_toy.cpp)

add_executable(host_byte_order src/host_byte_order/host_byte_order.cpp)

add_executable(main main.cpp)


add_executable(tcp_echo_serv src/tcp_echo/server.c)
#target_link_libraries(tcp_echo_serv unp)

add_executable(tcp_echo_cli src/tcp_echo/clilent.c)

add_executable(tcp_echo_serv_cpp src/tcp_echo/server.cpp)

add_executable(tcp_echo_client_cpp src/tcp_echo/client.cpp)
