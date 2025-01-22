//  An example program to demonstrate,
//  to what extent should a programmer (application developer) care when it comes to dynamic memory application.

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    int input = 0;

    printf("Enter the number of integers desired: ");
    scanf("%d", &input);

    if (input > 0) {
        int *pointer = (int *)malloc(sizeof(int) * input);

        if (NULL == pointer) {
            printf("Memory allocation failed!\n");
            return 1;
        } else {
            printf("Memory allocated successfully for %d items\n", input);
        }
    } else {
        printf("No dynamic memory allocation happened as input size is 0\n");
    }

    return 0;
}
