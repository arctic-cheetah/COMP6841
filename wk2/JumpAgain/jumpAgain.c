#include <stdlib.h>
#include <stdio.h>
#include "printFlag.c"

#define TRUE 1
#define FALSE 0

int printName();

int welcomeAdmin();

int main(int argv, char **argc) {

    printf("Welcome!\n");
    printName();
    printf("Everything is good.\n");

    return EXIT_SUCCESS;
}

int printName() {
    int isAdmin = 0;
    char name[16];

    printf("What is your name?\n");
    printf("> ");
    gets(&name);

    printf("Welcome, %s!\n", name);
    printf("You are in this program, but we do not grant you the rank of Admin.\n");
    printf("Now go away, or I will taunt you a second time.\n");

    return EXIT_SUCCESS;
}

int welcomeAdmin() {
    // There is no way to get to this function.

    printf("With great power comes great responsibility...\n");
    printFlag();

    return EXIT_SUCCESS;
}
