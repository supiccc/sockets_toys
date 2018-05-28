# sockets_toys

## 运行环境

* 型号：MacBook pro 13.3 2015
* 系统：10.13.2
* 编辑器：CLion
* 编译工具：[CMake][1]


## 目录

### *测试*
* 检查系统字节序 
[src/host_byte_order/host_byte_order.cpp ][2]

* 测试32位二进制转换为ipv4地址 
[src/inect_fun/ntop_toy.cpp ][3]
 
* 测试128位二进制转换为ipv4或ipv6地址 
[src/inect_fun/ntop6_toy.cpp ][4] 

### *TCP*
* TCP回射客户端
[src/tcp_echo/client.cpp][5]

* 使用多线程的TCP服务器
[src/tcp_echo/server.cpp][6]

* 使用单线程I/O复用模型的TCP服务器
[src/tcp_echo/server_select.cpp][7]

### *UDP*
* UDP回射客户端
[src/udp_echo/client.cpp][8]

* UDP服务器
[src/udp_echo/server.cpp][9]

* 支持TCP和UDP的回射服务器程序
[src/serv_echo/server.cpp][10]

  [1]: https://github.com/Kitware/CMake
  [2]: https://github.com/supiccc/sockets_toys/blob/master/src/host_byte_order/host_byte_order.cpp
  [3]: https://github.com/supiccc/sockets_toys/blob/master/src/inect_fun/ntop_toy.cpp
  [4]: https://github.com/supiccc/sockets_toys/blob/master/src/inect_fun/ntop6_toy.cpp
  [5]:
  https://github.com/supiccc/sockets_toys/blob/master/src/tcp_echo/client.cpp
  [6]:
  https://github.com/supiccc/sockets_toys/blob/master/src/tcp_echo/server.cpp
  [7]:
  https://github.com/supiccc/sockets_toys/blob/master/src/tcp_echo/server_select.cpp
  [8]:
  https://github.com/supiccc/sockets_toys/blob/master/src/udp_echo/client.cpp
  [9]:
  https://github.com/supiccc/sockets_toys/blob/master/src/udp_echo/server.cpp
  [10]:
  https://github.com/supiccc/sockets_toys/blob/master/src/serv_echo/server.cpp