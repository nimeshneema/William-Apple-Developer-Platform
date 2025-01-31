# Weekly Review

## Week 1

Week 1 review

-   History and background. Getting the right mindset about tooling.

-   Some basics of Objective-C, Cocoa and Swift.

```
#include <stdio.h>

    // The starting point of execution and the main logic of the program
    // is written in the main function.
int main(int argc, char *argv[]) {
    printf("Hello, World!");

    int a = 4;
    int b = 3;

    int sum_of_numbers = sum(a, b);
    int exponenciation = pow(a, b);

    return 0;
}

    //  Following are helper functions that we have written.
    //  Even though the code for the helper functions are simple enough
    //  such that the code can be written as it is inline instead of writing in the form of a function.
    //  We have written the functions to demonstrate something.

    //  Advantages: legibility, clarity and reusability. The code looks meaningful, readable, easily consumable by human.

    //  Code is never compiled by a human and never read by a machine.
    //  Humans have to read the code. So strive to write it such that it is easiest to read.
    //  Computer can compile anything as long as it is syntactically correct.

    //  Functions are simple convenience or utility for the rest of the program to use (and even other programs to re-use).
    //  They do not add any kind of architectural structure to the program.
    //  They are merely like a formula/process/machine which we package in the form of a function.
    //  They simply take an a certain specific type of input(s) and produce an output.

    //  A function does not provide any kind of code architecture on it's 

    //  Programming is simply a collection of some basic concepts (tools), like pieces of LEGO bricks.
    //  Just like how we use our creativity to connect the bricks and form shapes per our imagination,
    //  in programming we connect basic pieces to create architecture as per our business need.

    //  Functions, or class definition, structure definition etc. are simply LGEO bricks.
    //  They do not have any kind of architecture of themselves. They are simply bricks of different shape, sizes and colors.

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

//  A library (code library, such as The C Standard library) is simply a collection of functions, and in case of an object oriented library, may also include class definition (class definition + code for the class methods)

//  A framework on the other hand is basically an architecture or structure for an application. Similar to a library, it also includes definition of functions, classes, structures but it also has an structure of it's own.

//  Now since both a library and a framework has functions, both will expose APIs.

//  When we are linking to or using a library, we are simply making use of ready made functions in our code/logic.
//  But when we are working with a framework, we are adhering to the code structure provided by the framework. The framework provides a ready-made structure/architecture for our application. The ready-made part is like a generic architecture template which would be common to any application for that particular platform. When working with a framework, we are merely adding the specific items required for our app business logic, while reusing the generic architecture.

//  To give a very simple example.
//  While a library is like individual LEGO bricks, a framework is more like IKEA DIY kit.
```

---

## Week 2

-   Trinity of Coding: Sequence, Selection and Iteration.

-   Parts of a function: Body, return value/type, parameter list, name.

    Identify parts of function in Swift.

-   Parts of function in Swift. Identifying them.

-   Externalized parameter name.

-   Practise of programming.

-   Memory layout of running process (4 parts: data section, static variables, heap for dynamic allocation, stack for function calls)

---

## Week 3

-   Externalized parameter names.

-   Identifying function names in Swift.

-   Invoking functions.

-   Object oriented design process.

-   Understanding difference between procedural approach vs object oriented approach to program design.

-   Function overloading.

-   Exercises with function overloading.

-   Usage of `as` keyword to disambiguate function invocation.
