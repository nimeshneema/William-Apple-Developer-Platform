# Functions

-   "Functions", Closures, Anonymous functions, Functions acting as first class citizen.

    Once we cover the above items, it will give a rock solid foundation (not pun intended) in understanding most of all what happens in both Swift and SwiftUI. Both of them utilise concepts from here heavily.

    -   Functions are very very pervasive in Swift. While functions are a crucial part of any programing environment, Swift leverages them to the next level. Swift language makes extensive use of some advance concepts in functions. (When I say functions, I am talking about functions in programming langauges in general)

        As the programming evolved over the last decaded a lot of advance concepts around functions were developed (such as functions being first class citizen, closures, lambda).

        Swift language makes extensive use of advance concepts in functions which help provide us with pretty powerful thought tooling when it comes to writing code.

    -   We will focus on understanding functions (starting with understanding them in general (agnostic to any programming language))

---

-   Functions in Swift:

    ```
    func sum (_ x:Int, _ y:Int) -> Int {
        let result = x + y
        return result
    }
    ```

-   Keyword `func`.

-   (Base) name of the function followed by its parameter list. It consists, minimally, of parentheses.

-   Each parameter has a strict format: the name of the parameter, a colon, and the type of the parameter.

-   an underscore (`_`) and a space before each parameter name in the parameter list.

-   To return a value, after the parentheses is an arrow operator (`->`), followed by the type of value that this function will return.

-   Curly braces enclosing the body of the function.

-   In the function body, the variables defined as the parameter names have sprung to life, with the types specified in the parameter list.

-   keyword `return` to return value.

-   Void Return Type and Parameters

-   A function without a return type:

    ```
    func say1(_ s:String) -> Void { print(s) }
    func say2(_ s:String) -> () { print(s) }
    func say3(_ s:String) { print(s) }
    ```

-   A function without any parameters:

    ```
    func greet1() -> Void { print("howdy") }
    func greet2() -> () { print("howdy") }
    func greet3() { print("howdy") }
    ```

-   Function Signature: If we ignore the parameter names in the function declaration, we can completely characterize a function by the types of its inputs and its output.

-   External Parameter Names: A function can externalize the names of its parameters. The external parameter names become part of the function’s name, and must appear in a call to the function as labels to the arguments.

    -   Clarifies the purpose of each argument; an argument label can give a clue as to how that argument contributes to the behavior of the function.

    -   Distinguishes one function from another; two functions with the same name before the parentheses and the same signature, but with different external parameter names, are two distinct functions. External parameter names are part of the function name.

    -   Helps Swift to interface with Objective-C and Cocoa, where method parameters nearly always have external names.

-   By default, all parameter names are externalized automatically, using the internal name as the external name.

-   If you want to depart from the default behavior:

    -   Change the name of an external parameter.

    -   Suppress the externalization of a parameter.

-   Overloading: In Swift, function overloading is legal (and common). Two functions with exactly the same name, including their external parameter names, can coexist as long as they have different signatures.

    Two functions with the same base name but different external parameter names are two different functions, as the external parameter names are part of the function names.

-   Overloaded versions can be disambiguated from the context. Otherwise we encounter a compile time error.

-   A function can exist inside another function.

-   Function as Value: Functions are first-class citizens. A function can be used wherever a value can be used. A function can be assigned to a variable; a function can be passed as an argument in a function call; a function can be returned as the result of a function.

-   Swift has strict typing. You can assign a value to a variable or pass a value into or out of a function only if it is the right type of value. In order for a function to be used as a value, the function needs to have a type. And indeed it does: a function’s signature is its type.

-   Anonymous Functions:

    ```
    func whatToAnimate() {
            // self.myButton is a button in the interface
        self.myButton.frame.origin.y += 20
    }
    func whatToDoLater(finished:Bool) {
        print("finished: \(finished)")
    }
    UIView.animate(withDuration:0.4,
        animations: whatToAnimate, completion: whatToDoLater)
```

    ```
    UIView.animate(withDuration:0.4,
        animations: {
            () -> () in
            self.myButton.frame.origin.y += 20
        },
        completion: {
            (finished:Bool) -> () in
            print("finished: \(finished)")
        }
    )
    ```

-   Anonymous Function Abbreviated Syntax:

    1.  Omission of the return type: If the anonymous function’s return type is already known to the compiler, you can omit the arrow operator and the specification of the return type.

        ```
        UIView.animate(withDuration:0.4,
        animations: {
            () in // *
            self.myButton.frame.origin.y += 20
        }, completion: {
            (finished:Bool) in // *
            print("finished: \(finished)")
        })
        ```

    2.  Omission of the `in` expression when there are no parameters: If the anonymous function takes no parameters, and if the return type can be omitted, the in expression itself can be omitted.

        ```
        UIView.animate(withDuration:0.4,
            animations: { // *
                self.myButton.frame.origin.y += 20
            }, completion: {
                (finished:Bool) in
                print("finished: \(finished)")
        })
        ```

    3.  Omission of the parameter types: If the anonymous function takes parameters and their types are already known to the compiler, the types can be omitted.

        ```
        UIView.animate(withDuration:0.4,
            animations: {
                self.myButton.frame.origin.y += 20
            }, completion: {
                (finished) in // *
                print("finished: \(finished)")
        })
        ```

    4.  Omission of the parentheses: If the parameter types are omitted, the parentheses around the parameter list can be omitted.

        ```
        UIView.animate(withDuration:0.4,
            animations: {
                self.myButton.frame.origin.y += 20
            }, completion: {
                finished in // *
                print("finished: \(finished)")
        })
        ```

    5.  Omission of the `in` expression even when there are parameters: If the return type can be omitted, and if the parameter types are already known to the compiler, you can omit the in expression and refer to the parameters directly within the body of the anonymous function by using the magic names `$0`, `$1`, and so on.

        ```
        UIView.animate(withDuration:0.4,
            animations: {
                self.myButton.frame.origin.y += 20
            }, completion: {
                print("finished: \($0)") // *
        })
        ```

        6.  Omission of the parameter names: If the anonymous function body doesn’t need to refer to a parameter, you can substitute an underscore for its name in the parameter list in the in expression.

        ```
        UIView.animate(withDuration:0.4,
            animations: {
                self.myButton.frame.origin.y += 20
            }, completion: {
                _ in // *
                print("finished!")
        })
        ```

        If an anonymous function takes parameters, you must acknowledge them somehow. You can omit the `in` expression and use the parameters by the magic names `$0` and so on. Or you can keep the in expression and give the parameters names or ignore them with underscores. But you can’t omit the in expression and not use the parameters’ magic names! If you do, your code won’t compile.

        7.  Omission of the function argument label: If your anonymous function is the last argument being passed in this function call — which will just about always be the case — you can close the function call with a right parenthesis before this last argument, and then put just the anonymous function body without a label. This is called trailing closure syntax.

        ```
        UIView.animate(withDuration:0.4,
            animations: {
                self.myButton.frame.origin.y += 20
            }) { // *
                _ in
                print("finished!")
        }
        ```

        8.  Omission of the calling function parentheses: If you use a trailing closure, and if the function you are calling takes no parameters other than the function you are passing to it, you can omit the empty parentheses from the call. This is the only situation in which you can omit the parentheses from a function call.

        ```
        func doThis(_ f:() -> ()) {
            f()
        }
        doThis { // no parentheses!
            print("Howdy")
        }
        ```

        9.  Omission of the keyword `return`: If the anonymous function body consists of exactly one statement consisting of returning a value with the keyword return, the keyword return can be omitted.

        ```
        let arr = [2, 4, 6, 8]
        func doubleMe(i:Int) -> Int {
            return i*2
        }
        let arr2 = arr.map(doubleMe) // [4, 8, 12, 16]
        ```

        ```
        let arr = [2, 4, 6, 8]
        let arr2 = arr.map ({
            (i:Int) -> Int in
            return i*2
        })
        ```

        ```
        let arr = [2, 4, 6, 8]
        let arr2 = arr.map {$0*2}
        ```
