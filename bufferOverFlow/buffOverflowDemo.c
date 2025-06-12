#include <stdio.h>
int main(int argc, char *argv[])
{
    char str[10];
    int v = 0;
    gets(str);

    printf("You typed: %s\n", str);
    printf("v: %d | %x\n", v, v);
    return 0;
}