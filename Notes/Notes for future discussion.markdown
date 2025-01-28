# Notes for future discussion

-   Implicit coercion: When a value is automatically converted to a different data type during an operation.

    Supported in a lot of programming languages. The following C program gives a demonstration of the concept:

    ```
    float y = 3.14;
    int x = y;          // Implicit coercion for floating point value into integer value.
    printf("%d", x);
    ```

-   Swift programming language has strict typing. What this means is that every variable, function parameter, or return value in the program must have a explicit and clearly-defined data type all the time. This helps with type safety and makes program less susceptible to error.

-   Constants are static/fixed values. Such as numbers, characters etc.. They have an intrinsic value. Some examples are `3`, `2.7`, `"Name"`, `'C'` etc. of type integer number, floating point number, string and a character respectively.

-   Strong vs Weak typing across programming languages.

-   Understanding type system. The type of the data we are working with.

    -   Primarily there are numeric and character types.

-   On a philosophical level, no matter what platform or programming language we are working with there are only a handful of core data types that we deal with. These data types represent the entities we work in real world, such as numbers, characters and strings of characters.

    -   Numbers

        -   Integral/Non-fractional (both positive and negative).

        -   Fractional (both rational (numbers which can be represented in numerator/denominator form) and irrational (which cannot be expressed in numerator/denominator form). `0.5` is rational, whereas the value of `Pi` is irrational.

            Within the above two data type there are variations, which will differ in terms of range supported.

            If I have an 8 bit integer, I am only store value between `-128` to `127` inclusive.

            Integers can be 8, 16, 32 or 64 bit in size.

            Float and Double are data types for storing fractional numbers.

            Float uses less number of bytes to store data, thus can store data with lesser precision.

            Double can store numbers with higher precision.

    -   Character

        -   A single character such as 'c' and string, a sequence of one or more characters such as "Hello".

-   Word size of machine (commonly 32 or 64 bit).

-   Collection data type.

    -   These are also sometimes referred to as Derived data types.

    -   They are called derived, because they can be derived from some base data type (numeric and character).

    -   Array: A sequence of items, usually of the same data type.

        Formal definition of array: An ordered list indexed with numbers. Index starts with `0`.

    -   Dictionary: An unordered list indexed with a key.

    -   Set: An unordered collection of items with no duplication.

        In set there is no concept of sequence but inclusion.

        A set of all numbers of a dice. `{1,2,3,4,5,6}` and `{2,4,6,1,3,5}` are the same set.

    -   Arrays and dictionaries are the most common collection data types that we encounter in day to day programming.

    -   What does it mean when we say that a list is indexed? It takes the same amount of time to access any item in the list, no matter its location.

    -   Access time for any item in an array in Big-O notation is `O(1)`.

-   Endianness (Big endian and Little endian)

    In most casual programming and software development, this phenomena is abstracted away.

-   How does Stacks and heaps work for a program in execution (process)?

    How does the execution of functions happen in a program?

    A discussion on memory layout of a running process.

    There's an area for dynamic allocation of memory which is used to allocate memory for entities as and when needed while the program is running.

    Static allocation area which contains all the entities which are defined in the program.

    Stack: This area is used as kind of a scratch-pad when functions are invoked. (So when a function is invoked in our program, the program jumps and changes context from the current work it is doing and prepares itself to execute a function. How does it do that? It saves the address of the currently running instruction and also the parameters).

    Look up the meaning of the term "Stack Overflow".

    Stack Overflow is a runtime error. Most of the time it causes a program to crash.

-   In C programming language, the support for collection data types is very limited.

    Bool or boolean as a data type was not available in original and ANSI specification of C. It was eventually added as a base data type in recent specification of C programming language.

    Bool data type is available in Swift programming language as one of the primitive data types.

-   In the above discussion, we got into discussing the type system in programming to understand a very crucial feature in Swift.

    Swift language enforces a strict (strong) type system.

    What this mean that in Swift any and every entity at all the times has a very well defined data type associated with it.

-   JavaScript has loose typing

    ```
    var x = "Nimesh"    // Here, the variable `x` is referring to a contact of type string.
    x = 1               // Here the same variable `x` is now pointing to (referring to) a constant value of type integer.
    ```

    What is the data type of the variable `x`?
    
    Since JavaScript enforces loose typing there's no well defined data type for the variable `x`.

    Now, such an approach can also lead to a lot of runtime troubles in programming.

    But at the same time, having a loosely associated data type with a variable also affords a lot of flexibility.

    There's both and pros and cons associated with either of strong or weak (loose typing).

    The flexibility of using weak type system comes with a price. Price of unpredictability.

-   Swift programming language enforces strong typing. Objective-C is more relaxed. It has weak typing system.

-   Data Structures are themselves based on some core basic collection data types:

    Stack, Queue and List all data structures can be implemented using an array.

    Stack -> LIFO
    Queue -> FIFO

    We can use the same collection data type, namely an array data type to emulate either a Stack or a Queue. It will only differ in terms of the logic that we use for insertion and retrieval of elements.

    In C, we can also employ dynamic memory allocation and use a linked-list along-with necessary pointer variables instead to emulate either a stack, or a queue or an array.

    ```
    int numbers[] = {1,2,3,4}   // This will create an array of fixed size to store exactly 4 integers.
    int numbers[4];             // This will create an array of fixed size to store exactly 4 integers.
    ```

    In an array you can still change the values of the individual elements by re-assignment, but the size of the container (array) itself is hardcoded at compile time, meaning the memory is allocated statically.

    A dictionary data type is supported in more modern languages (such as Ruby, Python, JavaScript, Swift). These languages are also so much more dynamic in terms of memory allocation and the dynamic memory allocation is handled behind the scene, such that the developer generally never cares or has to worry about the allocation and deallocation of memory. It happens in an automated manner.

-   Difference between a library and framework.

-   Optional function parameters in Objective-C.

-   A 101 on easy to understand yet powerful debugging techniques:

    -   Step over

    -   Step into

    -   Pause

    -   Continue

---
