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

add_executable(tcp_echo_serv_fork src/tcp_echo/server.cpp)

add_executable(tcpecho_serv_select src/tcp_echo/server_select.cpp)

add_executable(tcp_echo_client src/tcp_echo/client.cpp)

add_executable(udp_echo_client src/udp_echo/client.cpp)

add_executable(udp_echo_server src/udp_echo/server.cpp)

add_executable(echo_server src/serv_echo/server.cpp)

