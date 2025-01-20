# Memory Layout of Process

Depending on the operating system, a chunck of memory gets allocated to a newly created process.

In general memory is divided into 4 sections:

1.  Text section:

    -   Contains the machine instructions. These are the instructions that basically forms the program.

2.  Data section (staticly allocated items):

    -   Contains (Stores) all the pre-defined/statically defined variables. These variables are created in the memory whenever the program is run, no matter what. These variables will be created alike during any and every run of the program.

3.  Heap:

    -   This is the section which is used for all kind of dynamic memory allocation needs. Now in a C program, if you don't any dynamic memory allocation, this section barely gets used. But in a more modern and dynamic language such as Swift (or JavaScript, Go, Python) where dynamism is so much a part of language and keeps happening without the developer consciously realsing.

        A 

4.  Stack:

    -   



In C programming everything is very meanual, explicit and clearly visible.

In more modern programming languags, a lot of dynamism in terms of creation of variables, entities, memory management happens without the developer actively realising it.

In C the developer is very much aware of and involved in dynamic memory allocation. Not so the case in more modern languages.

And both the approaches has their own pros and cons depending on what kind application a programmer is working on

and more importantly what kind of control or leverage the programmer is seeking.

The reason why C language is more suited towards low-level or system progamming and more modern

languages are more suited towards app developer.
