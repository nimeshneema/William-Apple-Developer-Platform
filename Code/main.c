#include <stdio.h>

int sum(int, int);
int difference(int, int);
int pow(int, int);

int main(int argc, char *argv[]) {
    printf("Hello, World!");

    int a = 4;
    int b = 3;

    int number_of_items = 0;

    printf("Enter the number of integers you want me to create?");
    scanf("%d", &number_of_items);

    if (number_of_items != 0) {
        int *ptr = (int *)malloc(sizeof(int) * number_of_items);
    }

    int sum_of_numbers = sum(a, b);
    int exponenciation = pow(a, b);
    difference(3,4); // not assigning the result to anything, but merely invoking the function.

    char name[20] = "William";
    name[] = "Nimesh" // I cannot do this in C, because when I have written the statement in the last line, the C compiler will statically allocate space of storing 20 character in memory. So I cannot simply assign some other string to the character array variable name. Instead I'll use a helper function such as `strcpy`.
    // But in more modern languages, such as Go, JavaScript, Swift, we can easily write these two lines and the "adjustment" of memory required to store the string happens automatically without the programmer even realising.

    return 0;
}

// The following functions are defined by the developer in this very source code file.
// It is possible that the developer is using some 3rd party library of functions (either in source form or pre-compiled form and the "interfaces" accessed via a header)
// So the functions themselves could come from any place.

// There's one more detail: Accessing/consuming/invoking any of the defined or linked function is optional. We may or may not use right.
// But it is also possible that a single function such as sum is invoked multiple times in our main program.
int sum(int x, int y) {
    return x + y;
}

int difference(int x, int y) {
    return x - y;
}

int product(int x, int y) {
    return x * y;
}

int pow(int x, int y) {
    int result = 1;

    for (int i = 0 ; i < y; i++) {
        result = result * y;
    }

    return result;
}

// ************************************** //

// Compiled binary

// The following instructions correspond to main
// main is the entry point of the program.
// When a program is executed
// the operating system creates a special data structure (called process)
// and allocates space in the main memory to store the process.
// The process data structure has distinct sections (four sections as discussed)
// The program instructions are stored in the text area
// and the process starts processing from the entry point instruction (corresponding to main function in our C program)
ADD001: INS 001
ADD002: INS 002 // at this address/point in code, there's a call to sum function.
ADD003: INS 003 // at this address/point in code, there's a call to product function.
ADD004: INS 004
ADD005: INS 001
ADD006: INS 002 // at this address/point in code, there's a call to sum function.
ADD007: INS 003
ADD008: INS 004 // at this address/point in code, there's a call to product function.
ADD009: INS 009 // at this address/point in code, there's a call to sum function.
ADD010: INS 010 // at this address/point in code, there's a call to difference function.
ADD011: INS 011
ADD012: INS 012 // at this address/point in code, there's a call to sum function.
END013:
// The following instructions correspond to sum
// This and the rest of the functions can be invoked any number of times.
// Any function can be invoked by any other function any number of times.
// It's also possible to have recursive calls to functions.
ADD013: INS 013
ADD014: INS 014
END015:

// The following instructions correspond to product
ADD015: INS 015
ADD016: INS 016
END17:

// The following instructions correspond to difference
ADD017: INS 017
ADD018: INS 018
END019:

// The process data structure in the main memory knows about the addresses (like page numbers in a book) of where the instructions corresponding to a function starts and ends.

// A mental model to use is that a program simply consists of control jumping between different functions.
// It's an art to design the flow of our program such that our logic design is implemented and we get the desired result.

// ************************************** //
