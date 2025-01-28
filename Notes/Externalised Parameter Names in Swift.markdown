# Externalized Parameter Names in Swift

When looking at the parameter list for a function declaration or definition, we have almost always notice exactly one of the following three preceding the parameter names:

1.  An underscore (`_`).

2.  Some string in camel case (Camel casing is a commonly followed convention in Swift).

3.  Nothing at all.

What comes before the parameter name in function declaration/definition is called "Externalized Parameter Name".

There is a reason why externalized parameter names exists. In due course, we will see why do they exist and why they are a good thing.

When we write a function declaration or definition, we can choose to externalize a parameter name.

What we have been able to follow so far from the conversation is that, we have a choice to associate something with the parameter names in a function.

That something could be either:

1.  an underscore (`_`).

2.  some descriptive string (without any spaces or special symbols).

3.  nothing at all.

Think about an externalized parameter name as an alternative name for a parameter. If present, there can only be one externalised parameter name.

But having an externalized parameter name is optional.

Now, externalization of a parameter name happens automatically, when nothing is specified before a parameter name. And in such a case, the externalized parameter name is same as the parameter name.

So, we either supply a different name to be used as an externalized parameter name, or we don't supply anything at all.

But if we do not want a parameter's name to be externalized, we have to suppress it. How do we do that? We specify an underscore character (`_`) before the parameter name, as a signal to the compiler. When suppressed, there's no external parameter name. The external parameter name is essentially missing.

If you want to specify an externalized parameter name, which is different from the parameter name itself, just specify it before the parameter name.

If you do not associate any externalized parameter name with an argument, both the internal and the external parameter name are the same as the name of the argument itself.

Another simple yet profound observation: An externalized parameter name is used "externally" and an internal parameter name (there's not such formal term as the internal parameter name, it's just parameter name) is used "internally" inside the body of the function.

There are four parts to a function:

1.  body

2.  return type

3.  argument list

4.  name

To help remember this sequence, there's a mental model for use with Swift programming language code.

Look at the items in the list above in the reverse order from 1 to 4 in any function code.

```
func sum(_ x:Int, _ y:Int) -> Int {

}
```

In the example above, we have the keyword `func`, followed by the function name, then the list of arguments, then return type and then the body.

Then, why did I mention the list items in reverse? Well in that order, the items are easy to identify. Let me break that down:

1.  Every function, no matter what kind (anonymous, define and call, closure etc..) and no matter what form of abbreviations and Swifty syntax is used, has a function body. And the body is delimited between `{}`. So the first thing that we do is to identify the part enclosed within the braces. That's the function body.

    A define and call function (where we write the function code and invoke it then and there) has a pair of parentheses following the function body (after the closing brace). Other than this case, the code for function ends with a closing brace and hence it makes it easy to identify the function body at a quick glance.

2.  Now a function may or may not return a value. If a function returns a value, it precedes the body. The return type comes just before the opening brace (type of return value preceded by arrow operator `->`). If the function doesn't return any value, the return type could either be specified as `void`, or `()` or skipped altogether along-with the arrow operator.

3.  Now preceding the return type is a list of all the parameters enclosed within parentheses. No matter the count, type and externalization of parameters, the parameter list enclosed within parentheses is always present (in most cases, except for a few which will be discussed wherever appropriate).

4.  Preceding the parameter list is the function name. (This is not fully correct. The function name is formed with the name preceding the term before the parentheses along with the externalized parameter names. The term before the parentheses could be informally referred to as the base name of the function.)

    In Swift, the complete name of the function includes the name before the opening parenthesis and the names of all the externalized parameter names followed by a colon.

---

Let's make an example function in Swift:

```
    func sum(first: Int, second: Int, third:Int) -> Int {
        return first + second + third
    }
```

A function "can" (optionally) have it's parameter names externalized. Meaning externalization must be optional.

What does externalization mean? We can provide an alternative name corresponding to parameters (cannot be used as a substitute).

1.  If we don't do anything, meaning we just write a parameter name and a colon and a data type, the externalization of parameter name happens automatically.

2.  If I do not want to externalize the parameter name, I have to do some internation and suppress the externalization from happening. How do I do that, I specify an underscore (`_`) as a signal to the compiler to suppress the externalization.

3.  If I want a different external name, I simply supply it before the actual parameter name followed by a space.

Why do we need externalization of parameter name in the first name?

Internal names of parameters are for use "only" internally inside the body of the function. So inside the body of the function, whenever we want to refer to or use a parameter, we use it via the (internal) parameter name.

The externalized parameter names form a part of the name of the function.

The full name of a function in Swift is a combination of the base name (the name before the opening parentheses) and all the external parameter names.

The (internal) parameter names are used internally inside the body of the function.

The externalized parameter names are used with the function call/invocation.

When invoking a function, for the parameter which do not have an externalized name, we simply pass the parameter, without any label in the function call.

But when we have an externalized parameter name (either a custom one, or the same as the internal name), the external name has to precede the actual parameter in the function call.

In the function name, there are no spaces anywhere.

---

