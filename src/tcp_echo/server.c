//
// Created by 陈树沛 on 12/05/2018.
//

#include "unp.h"
//void str_echo1(int sockfd) {
//    ssize_t n;
//    char buf[MAXLINE];
//    long arg1, arg2;
//
//    for ( ; ; ) {
//        if ((n = Readline(sockfd, buf, MAXLINE) == 0))
//            return;
//        if (sscanf(buf, "%ld%ld", &arg1, &arg2) == 2)
//            snprintf(buf, sizeof(buf), "%ld", arg1 + arg2);
//        else
//            snprintf(buf, sizeof(buf), "input error!");
//        n = strlen(buf);
//        Writen(sockfd, buf, n);
//    }
//}
int main(int argc, char ** argv) {
    int listenfd, connfd;
    struct sockaddr_in cliaddr, servaddr;
    socklen_t clilen = 0;
    pid_t childpid;

    listenfd = Socket(AF_INET, SOCK_STREAM, 0);

    bzero(&servaddr, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(SERV_PORT);
    servaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    Bind(listenfd, (SA *)&servaddr, sizeof(servaddr));

    Listen(listenfd, LISTENQ);

    for( ; ; ) {
        clilen = sizeof(cliaddr);
        connfd = Accept(listenfd, (SA *) &cliaddr, &clilen);

        if ((childpid = Fork()) == 0) {
            Close(listenfd);
            str_echo(connfd);
            exit(0);
        }

        Close(connfd);
    }
}