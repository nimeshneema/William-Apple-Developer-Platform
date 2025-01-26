# Function

Functions are pretty pervasive in imperative programming.

Functions primarily have three things going on with them, declaration, definition and invocation. All three of them are discussed as follows:

1.  Function declaration

    -   Specifies the function's name, return type, and parameters (with their type and optionally name).

    -   It is called variously as function specification or function interface.

    -   The purpose of declaration is to specify the existance and guide usage format of the function.

    -   Most compiled libraries have an accompanying file listing function declaration that acts as guide for both the compiler and the users (developers).

    -   A declaration is also sometimes termed as the function contract.

2.  Function definition

    -   Definition provides the actual code which will be executed.

    -   The code is usually delimited (under braces in most languages).

3.  Function invocation

    -   This is also called informally as calling a function.

    -   While the mechanism or syntax to invoke a function may differ slightly across programming languages, for most cases, it involves specifying the function name, followed by a list of arguments to be sent.

    -   The compiled program behaves such that, if the function is supposed to return a value, the returned value replaces the function invocation statement. So, if the function invocation is a part of an expression, the invocation expression, in essence, gets replaced by the value returned.

    -   In the running program, when a function invocation instruction is encountered, the computer does a context switch and executes the instructions specified in the function body. The arguments supplied to the invoked function are provided to the function instructions, which it acts upon.

        The runtime subsystem in the computer sets up things such that, once the function execution is complete, the computer is able to get the returned value, return back to resuming exeuction of the instructions at the point where the context switch was made, and substitutes the return value at the point of function invocation.

To summarise again:

1.  When I specify the name of a function along with the list of argument and the return type, it's called a function "declaration". It's like advertising/declaring to the world about the "interface" of the function. (This concept applies to all programming language)

2.  When we "also" supply the body of the function (the code/logic), we formally call it as function "definition".

    The terminologies "declaration" and "definition" are used universally across all programming languages.

    In C header files all we are getting are declarations corresponding to the compiled function code present in the library.

3.  When we call or trigger a function anywhere else, it is called "invocation". A function invocation uses the name of the function and supplies all the parameters with their correct type.
