//
// Created by 陈树沛 on 12/05/2018.
//

#include "unp.h"

int main(int argc, char ** argv) {
    int sockfd;
    struct sockaddr_in servaddr;
    char addr[20];

//    if (argc != 2) {
//        err_quit("usage: out <IPaddress> ");
//    }
    printf("请输入IP地址：");
    scanf("%s", addr);

    sockfd = Socket(AF_INET, SOCK_STREAM, 0);

    bzero(&servaddr, sizeof(servaddr));

    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(SERV_PORT);
    Inet_pton(AF_INET, addr, &servaddr.sin_addr);

    Connect(sockfd, (SA *)&servaddr, sizeof(servaddr));

    str_cli(stdin, sockfd);

    exit(0);

}