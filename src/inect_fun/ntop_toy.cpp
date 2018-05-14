//
// Created by 陈树沛 on 03/05/2018.
//
#include <iostream>
#include <iomanip>
#include <arpa/inet.h>
#include <netinet/in.h>


// test：将32位二进制转换为ipv4地址
int main() {
    struct in_addr * addr = new struct in_addr;

    //将主机字节序转换为网络字节序，MacOS为小端，若主机字节序为大端，则该函数为空函数
    // host to net
    addr->s_addr = htonl(0x000000FF);
    std::cout << "numeric input: " << std::hex << std::setfill('0') << std::cout.width(8) << ntohl(addr->s_addr) << "\n";


    //使用字节操纵函数将二进制值转换为点分十进制
    // numeric to ASCII
    const char * b = inet_ntoa(*addr);
    std::cout << "inet_ntoa(*addr) result: " << b << "\n";

    // presentation to numeric （常用方法）
    auto * a = static_cast<char *>(malloc(INET_ADDRSTRLEN));
    inet_ntop(AF_INET, addr, a, INET_ADDRSTRLEN);
    std::cout << "inet_ntop result: " << a << "\n";


    return 0;
}