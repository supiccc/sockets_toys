//
// Created by 陈树沛 on 28/05/2018.
//

// 支持 TCP 和 UDP 的回射服务器程序
// support TCP and UDP echo application

#include <sys/socket.h>
#include <iostream>
#include <cstdio>
#include <netinet/in.h>
#include <unistd.h>
#include <csignal>
#include <sys/wait.h>
#include <sys/select.h>

#define sockaddr struct sockaddr
#define MAXLINE 4096

void str_echo(int sockfd) {
    ssize_t n;
    char buf[MAXLINE];
    long arg1, arg2;
    again:
    while ((n = read(sockfd, buf, MAXLINE)) > 0) {
        write(sockfd, buf, n);
    }

    if (n < 0 && errno == EINTR)
        goto again;
    else if (n < 0)
        std::cout << "str_echo: read error";
}

void sig_chld(int signo) {
    // signal handler
    pid_t pid;
    int stat;

    // pid = wait(&stat); 如果多个 SIGCHLD 信号同时到达，wait 只能获取第一个停止的进程
    while ((pid = waitpid(-1, &stat, WNOHANG)) > 0) // WNOHANG 告知 waitpid 在有尚未终止的子进程在运行时不要阻塞
        std::cout << "Child " << pid << " terminated" << std::endl;

    return;
}

int main() {
    int listenfd, connfd, udpfd;
    struct sockaddr_in cliaddr, servaddr;
    socklen_t clilen;
    fd_set rset;
    int maxfd, nready;
    int nread;
    char buf[MAXLINE];
    pid_t childpid;
    const int on = 1;

    // create listening TCP sockets
    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(9877);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
    bind(listenfd, (sockaddr *) &servaddr, sizeof(servaddr));

    listen(listenfd, 1024);

    // crete listening UDP sockets
    udpfd = socket(AF_INET, SOCK_DGRAM, 0);
    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(9877);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    bind(udpfd, (sockaddr *)&servaddr, sizeof(servaddr));

    std::signal(SIGCHLD, sig_chld); // 信号捕获处理函数 signal handler，处理僵死进程

    maxfd = std::max(udpfd, listenfd);

    FD_ZERO(&rset);


    while (1) {
        FD_SET(listenfd, &rset);
        FD_SET(udpfd, &rset);

        if ((nready = select(maxfd + 1, &rset, NULL, NULL, NULL)) < 0) {
            if (errno == EINTR)
                continue;
            else {
                printf("select error");
                exit(0);
            }
        }


        if (FD_ISSET(listenfd, &rset)) {
            clilen = sizeof(cliaddr);
            connfd = accept(listenfd, (sockaddr *)&cliaddr, &clilen);
            if ((childpid = fork()) == 0) {
                close(listenfd);
                str_echo(connfd);
                exit(0);
            }
            close(connfd);
        }

        if (FD_ISSET(udpfd, &rset)) {
            clilen = sizeof(cliaddr);
            nread = recvfrom(udpfd, buf, MAXLINE, 0, (sockaddr *)&cliaddr, &clilen);
            sendto(udpfd, buf, nread, 0, (sockaddr *)&cliaddr, clilen);
        }


    }

    exit(0);

}