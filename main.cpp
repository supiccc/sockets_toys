//
// Created by 陈树沛 on 07/05/2018.
//

#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <string>
#include <iostream>

int main (int argc, char ** argv) {
    char buf[100];
    std::string a;
    long arg1, arg2;
    std::cin.get(buf, sizeof(buf));
    printf("%s\n", buf);
    std::sscanf(buf, "%ld%ld", &arg1, &arg2);
    snprintf(buf, sizeof(buf), "%ld", arg1 + arg2);
    printf("%s", buf);

    return 0;
}