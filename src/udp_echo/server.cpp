//
// Created by 陈树沛 on 28/05/2018.
//

#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>

#define sockaddress struct sockaddr
#define MAXLINE 4096

void str_echo(int fd, sockaddr * cliaddr, socklen_t clilen) {
    int n;
    char buff[MAXLINE];
    for (; ; ) {
        n = recvfrom(fd, buff, MAXLINE, 0, cliaddr, &clilen);
        sendto(fd, buff, n, 0, cliaddr, clilen);
    }
}

int main() {
    int sockfd;
    struct sockaddr_in servaddr, cliaddr;

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(9877);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    bind(sockfd, (sockaddress *)&servaddr, sizeof(servaddr));

    str_echo(sockfd, (sockaddress *)&cliaddr, sizeof(cliaddr));
}