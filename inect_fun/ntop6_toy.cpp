//
// Created by 陈树沛 on 03/05/2018.
//
#include <iostream>
#include <iomanip>
#include <netinet/in.h>
#include <arpa/inet.h>

// 测试将128位二进制转换为ipv4或ipv6地址
int main() {
    // 初始化一个ipv6地址结构
    struct in6_addr * addr = new struct in6_addr;
    addr->__u6_addr.__u6_addr32[0] = 0x10111010;
    addr->__u6_addr.__u6_addr32[1] = 0x0101FF11;
    addr->__u6_addr.__u6_addr32[2] = 0xFFFFFFFF;
    addr->__u6_addr.__u6_addr32[3] = 0xFFFFFFFF;

    // 创建保存ipv6字符串的指针，注意申请内存；
    char * a = new char[sizeof(INET6_ADDRSTRLEN)];

    // 转换！
    inet_ntop(AF_INET6, addr, a, INET6_ADDRSTRLEN);
    std::cout << a;
    return 0;
}