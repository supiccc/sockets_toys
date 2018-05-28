//
// Created by 陈树沛 on 13/05/2018.
//

#include <sys/socket.h>
#include <iostream>
#include <cstdio>
#include <netinet/in.h>
#include <unistd.h>
#include <csignal>
#include <sys/wait.h>
#include <sys/select.h>

// fork写法

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
    int listenfd, connfd;
    struct sockaddr_in cliaddr, servaddr;
    socklen_t clilen;
    pid_t childpid;

    listenfd = socket(AF_INET, SOCK_STREAM, 0);

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(9877);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    bind(listenfd, (sockaddr *)&servaddr, sizeof(servaddr));

    listen(listenfd, 1024);

    std::signal(SIGCHLD, sig_chld); // 信号捕获处理函数 signal handler，处理僵死进程

    while (1) {
        clilen = sizeof(cliaddr);
        if ((connfd = accept(listenfd, (sockaddr *)&cliaddr, &clilen)) < 0) {
            if (errno == EINTR) {
                continue;
            }
            else {
                std::cout << "accpt error";
                break;
            }

        }

        while ((childpid = fork()) == 0) {
            close(listenfd);
            str_echo(connfd);
            exit(0);
        }
        close(connfd);
    }

    exit(0);

}