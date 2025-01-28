    // A C program demonstrating how we can interchange the working mechanism between a counter based vs a condition based loop.
    // The two looping techniques can be interchanged easily.
    // But we prefer going with the one which "reads" more naturally as a prose.

#define LENGTH_OF_NAME 7    // It does not scale.

#include <stdio.h>

int main(int argc, char *argv[]) {
    char name[] = "William";
    int length_of_name = 0; // The entity length_of_name is a variable and it is possible to accidentally and inadvertently change to an incorrect value. But C programming language does not have a device/mechanism to make constants.

    char *character_pointer = name; // the bare name of an array in C is the address of the first element, which is the same thing as the address of the array.

    while ('\0' != *(character_pointer++)) {
        length_of_name++;
    }

    const int length_of_string = length_of_name;    // A more scalable approach. The source code adapts to any change in the contents of the `name` character array variable.

        // Reset the pointer
    character_pointer = name;

        // A regular while loop using a selection condition.
    while ('\0' != *character_pointer) {
        printf("%c", *character_pointer);
        character_pointer++;
    }

    printf("\n");

        // A regular for loop using a counter based loop.
    for (int i = 0; i < length_of_string; i++) {
        printf("%c", name[i]);
    }

    printf("\n");

        // A regular while loop using a counter based loop.
    int i = 0;
    while (1) { // A 1 indicates true. We will break appropriately.
        if (i >= length_of_string) {
            break;
        }
        printf("%c", name[i]);
        i++;
    }

    printf("\n");

        // Reset the pointer
    character_pointer = name;

        // A regular for loop using a selection condition.
    for (; ;) {
        if ('\0' != *character_pointer) {
            printf("%c", *character_pointer);
            character_pointer++;
        } else {
            break;
        }
    }

    printf("\n");

    return 0;
}
