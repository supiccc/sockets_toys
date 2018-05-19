//
// Created by 陈树沛 on 19/05/2018.
//

#include <sys/socket.h>
#include <iostream>
#include <cstdio>
#include <netinet/in.h>
#include <unistd.h>
#include <csignal>
#include <sys/wait.h>
#include <sys/select.h>

// select 写法

#define sockaddr struct sockaddr
#define MAXLINE 4096


int main() {
    int listenfd, connfd, sockfd;
    struct sockaddr_in cliaddr, servaddr;
    socklen_t clilen;
    fd_set allset, rset;
    int client[FD_SETSIZE];
    int maxfd, nready, maxi;
    int i, nread;
    char buf[MAXLINE];

    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(9877);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    bind(listenfd, (sockaddr *) &servaddr, sizeof(servaddr));

    listen(listenfd, 1024);

    maxfd = listenfd;
    maxi = -1;

    for (i = 0; i < FD_SETSIZE; ++i) {
        client[i] = -1;
    }
    FD_ZERO(&allset);
    FD_SET(listenfd, &allset);

    while (1) {
        rset = allset;
        nready = select(maxfd + 1, &rset, NULL, NULL, NULL);

        if (FD_ISSET(listenfd, &rset)) {
            clilen = sizeof(cliaddr);
            connfd = accept(listenfd, (sockaddr *)&cliaddr, &clilen);

            for (i = 0; i < FD_SETSIZE; ++i) {
                if (client[i] < 0) {
                    client[i] = connfd;
                    break;
                }
            }

            if (i == FD_SETSIZE) {
                std::cout << "too many client!";
                exit(0);
            }

            if (connfd > maxfd)
                maxfd = connfd;

            if (i > maxi)
                maxi = i;

            FD_SET(connfd, &allset);
            if (--nready <= 0) {
                continue;
            }
        }

        for (int j = 0; j <= maxi; ++j) {
            if ((sockfd = client[j]) < 0) {
                continue;
            }
            if (FD_ISSET(sockfd, &rset)) {
                if ((nread = read(sockfd, buf, MAXLINE)) == 0) {
                    // 客户断开连接
                    close(sockfd);
                    FD_CLR(sockfd, &rset);
                    client[j] = -1;
                } else
                    write(sockfd, buf, nread);
                if (--nready <= 0)
                    break;
            }
        }
    }

    exit(0);

}