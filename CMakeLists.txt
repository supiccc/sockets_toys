cmake_minimum_required(VERSION 3.10)
project(sockets_toy)

set(CMAKE_CXX_STANDARD 11)

set(UNPINC_DIR lib/unp.h)
set(UNPLINK_DIR lib/libunp.a)
include_directories(${UNPINC_DIR})
link_directories(${UNPLINK_DIR})
link_libraries(unp)


add_executable(ntop_toy inect_fun/ntop_toy.cpp)

add_executable(ntop6_toy inect_fun/ntop6_toy.cpp)

add_executable(host_byte_order lib/config.h lib/unp.h host_byte_order/host_byte_order.cpp)

add_executable(main main.cpp)

add_executable(tcp_echo_serv tcp_echo/server.c)
target_link_libraries(tcp_echo_serv unp)

add_executable(tcp_echo_cli tcp_echo/clilent.c)
