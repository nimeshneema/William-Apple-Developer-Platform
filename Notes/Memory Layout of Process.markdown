# Memory Layout of Process

Depending on the operating system, a chunck of the main memory gets allocated to a newly created process.

In general memory is divided into 4 sections:

1.  Text section:

    -   Contains the machine instructions. These are the instructions that forms the program.

2.  Data section:

    -   Contains all the pre-defined variables. These variables are created in the memory whenever the program is run, no matter what. These variables will be created alike during any and every run of the program. Such items are called staticly allocated items.

3.  Heap:

    -   This is the section which is used for all kind of dynamic memory allocation needs. In a language such as C, which requires explicit memory allocation, if we don't do any dynamic memory allocation, this section barely gets used. But in more modern and dynamic languages such as Swift (or JavaScript, Go, Python etc.) dynamism is so much more a part of the language, and happens without the programmer consciously realsing it.

4.  Stack:

    -   A stack is a special area used for managing function invocations. It is used to store parameter values passed to a function call, and return address of the instruction which invoked the function.


In C programming everything is manual, explicit and clearly visible.

In more modern programming languags, a lot of dynamism happens in terms of creation of variables, entities. Memory management happens without the developer actively realising it.

In C the developer is very much aware of and involved in dynamic memory allocation. Not so the case in more modern languages.

And both the approaches has their own pros and cons depending on what kind application a programmer is working on.

More importantly what kind of control or leverage the programmer is seeking.

This explains the reason why C language is more preferred and more suited towards low-level or system progamming and more modern languages are suited towards general app development.
