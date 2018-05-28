//
// Created by 陈树沛 on 28/05/2018.
//

#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define MAXLINE 4096
#define sockaddress struct sockaddr

void str_send(FILE * fp,int sockfd, sockaddr * servaddr, socklen_t servlen) {
    char sendLine[MAXLINE], recvLine[MAXLINE];
    int n;

    while (fgets(sendLine, MAXLINE, fp)) {
        sendto(sockfd, sendLine, strlen(sendLine), 0, servaddr, servlen);
        if ((n = recvfrom(sockfd, recvLine, MAXLINE, 0, NULL, 0)) > 0 && recvLine[0] != '\n') {
            recvLine[n] = 0;
            fputs(recvLine, stdout);
        }
    }
}

int main() {
    char addr[20];
    int sockfd;
    struct sockaddr_in servaddr;

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(9877);
    inet_pton(AF_INET, addr, &servaddr.sin_addr);

    std::cout << "please enter an ip address: ";
    std::cin >> addr;

    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    str_send(stdin, sockfd, (sockaddress *)&servaddr, sizeof(servaddr));
    exit(0);
}