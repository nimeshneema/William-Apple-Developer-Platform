# Externalized Parameter Names in Swift

When looking at the parameter list for a function declaration or definition, we have almost always noticed exactly one of the following three:

1.  underscore (`_`).

2.  some string in camel case (using camel case is a commonly followed convention).

3.  nothing at all.

What comes before the parameter name in function declaration/definition is called "Externalized Parameter Name".

There is a reason why externalized parameter names exists. We will eventually understand how to accept their presence (why do they exist).

When we write a function declaration or definition, we can choose to externalize a parameter name.

What we have been able to follow so far from the conversation is that, we have a choice to associate something with the parameters of a function.

That something could be either a:

1.  underscore (`_`).

2.  some descriptive string (without spaces and any special symbol).

3.  nothing at all.

An externalized parameter name is like an alternative name for a parameter. If present, there can only be one externalised parameter name.

But having an externalized parameter name is optional (not mandatory).

If I do not want a parameter's name to be externalized, I have to suppress it. How do I suppress it. I specify an underscore (`_`) as a signal to the compiler. When suppressed, there's no external parameter name. The external parameter name is essentially missing.

If I want to specify an externalized parameter name, which is different from the parameter name itself, I specify it just before the parameter name.

If I do not associate any externalized parameter name with an argument, both the internal and the external parameter name are the same which is the name of the argument itself.

Another simple yet profound observation: An externalized parameter name is used "externally" and an internal parameter name (there's not such formal term as the internal parater name, it's just parameter name) is used "internally" inside the body of the function.

Understand function declaration/definition and function invocation separately.

Four parts of the function (again!):

1.  body

2.  return type

3.  argument list

4.  name

To help you remember this sequence, I'll give you mental model for use with Swift programming language code.

Look at the items in the list above in the reverse order from 1 to 4 in any funtion code.

Keep in mind the demarcation between a:

-   function declaration and definition.

    and

-   function invocation.


1.  When I specify the name of a function along with the list of argument and the return type, it's called a function "declaration". It's like advertising/declaring to the world about the "interface" of the function. (This concept applies to all programming language)

2.  When we "also" supply the body of the function (the code/logic), we formally call it as function "definition".

    The terminologies "declaration" and "definition" are used universally across all programming languages.

    In C header files all we are getting are declarations corresponding to the compiled function code present in the library.

3.  When we call or trigger a function anywhere else, it is called "invocation". A function invocation uses the name of the function and supplies all the parameters with their correct type.

In Swift, the complete name of the function includes the name before the opening parenthesis and the names of all the externalized parameter names followed by a colon.
