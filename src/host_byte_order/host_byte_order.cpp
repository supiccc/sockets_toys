#include <iostream>
#include "../../include/unp.h"

// 测试系统字节序
int main() {
    union {
        int s; //测试32位整数的字节序
        char c[sizeof(short)];
    } un;

    un.s = 0x01000002;

    printf("%s\n", CPU_VENDOR_OS);

    if (sizeof(int) == 4) {
        if (un.c[0] == 1 && un.c[3] == 2)
            printf("big-endian\n");
        else if (un.c[0] == 2 && un.c[3] == 1)
            printf("little-endian\n");
        else
            printf("unkonwn\n");
    } else
        printf("sizeod(short) = %lu\n", sizeof(short));

    return 0;
}