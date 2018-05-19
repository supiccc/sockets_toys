//
// Created by 陈树沛 on 16/05/2018.
//

#include <iostream>
#include <cstdio>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/select.h>
#include <unistd.h>

#define SERV_PORT 9877
#define MAXLINE 4089
#define sockaddr struct sockaddr

void str_cli(FILE * fp, int sockfd) {
    fd_set rset;
    int stdineof = 0, maxfdp,n;
    char buff[MAXLINE];

    FD_ZERO(&rset);

    for (; ; ) {
        if (stdineof == 0) {
            FD_SET(fileno(fp), &rset);
        }
        FD_SET(sockfd, &rset);
        maxfdp = std::max(fileno(fp), sockfd) + 1;
        select(maxfdp, &rset, NULL, NULL, NULL);

        if (FD_ISSET(fileno(fp), &rset)) {
            if ((n = read(fileno(fp), buff, MAXLINE)) == 0) {
                stdineof = 1;
                shutdown(fileno(fp), SHUT_WR);
                FD_CLR(fileno(fp), &rset);
                continue;
            } else {
                write(sockfd, buff, n);
            }
        }

        if (FD_ISSET(sockfd, &rset)) {
            if ((n = read(sockfd, buff, MAXLINE)) == 0) {
                if (stdineof == 0) {
                    std::cout << "服务器中断！";
                    return;
                } else {
                    std::cout << "str_cli: server terminated prematurely";
                    exit(0);
                }
            }
            write(fileno(stdout), buff, n);
        }
    }
}

int main(int argc, char ** argv) {
    int sockfd;
    struct sockaddr_in servaddr;
    char addr[20];

    std::cout << "please enter IP address：";
    std::cin >> addr;

    sockfd = socket(AF_INET, SOCK_STREAM, 0);

    bzero(&servaddr, sizeof(servaddr));

    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(SERV_PORT);
    inet_pton(AF_INET, addr, &servaddr.sin_addr);

    if(connect(sockfd, (sockaddr *)&servaddr, sizeof(servaddr)) == 0) {
        // 这里要使用 endl 刷新缓冲区！才能立即输出！
        std::cout << "welcome to supiccc's server!" << std::endl;
        str_cli(stdin, sockfd);
    }

    exit(0);
}