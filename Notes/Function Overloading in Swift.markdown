# Function Overloading in Swift

-   Two or more functions with the same signature can co-exist in the same scope, as long as they have a different name.

    ```
    (Int, Int) -> Int
    ```

    ```
    func sum(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    ```

    There is only one expression in the above function. And since the above function is expected to return a value (indicated by the return type), we can confidently assume that the result of the expression is the value to be returned. In such a case, we can skip the specifying the `return` keyword, and have the function all in one line. We can re-write the function above with the same effect:

    ```
    func sum(_ x: Int, _ y: Int) -> Int { x + y }
    ```

    Another function with signature:

    ```
    func product(_ x: Int, _ y: Int) -> Int {
        return x * y
    }
    ```

    ```
    func product(_ x: Int, _ y: Int) -> Int { x * y}
    ```

    `sum` and `product` are two functions with different names and same signature.

    Now, let's attempt to write, two functions, same name and different signature:

    ```
    func sum(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    ```

    ```
    func sum(_ x: Double, _ y: Double) -> Double {
        return x + y
    }
    ```

-   Name of a function is a combination of:

        -   Name before the parentheses.

        -   All the externalized parameter names.

-   Functions with different names but same signature can easily coexist.

-   Functions with same name and same signature can't coexist. (Because there will be no way to differentiate).

-   Now, what about functions with the same name but different signature (parameter type and return type).

-   Functions with same signature can coexist in the same place (scope) as long as they have different names (externalized parameter names form a part of the function name)

-   Now, how about having functions with the same name (including externalized parameter name), but with a different signature.

```
    //  Name: sum(firstNum:secondNum:thirdNum:)
    //  Invocation: sum(firstNum:5, secondNum: 4, thirdNum: 3)
    //  Signature: (Int, Int, Int) -> Int
func sum(firstNum: Int, secondNum: Int, thirdNum: Int) -> Int {
    return firstNum + secondNum + thirdNum
}

    //  Name: sum(firstNum:secondNum:)
    //  Invocation: sum(firstNum: 5, secondNum: 4)
    //  Signature: (Int, Int) -> Int
func sum(firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}
```

    //  Name: sum(firstNum:secondNum:thirdNum:)
    //  Name: sum(firstNum:secondNum:)

    //  Signature: (Int, Int, Int) -> Int
    //  Signature: (Int, Int) -> Int



```
    //  Name: sum(firstNum:secondNum)
    //  Invocation: sum(firstNum:5, secondNum: 4)
    //  Signature: (Int, Int) -> Int
func sum(firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}

    //  Name: sum(firstNum:secondNum)
    //  Invocation: sum(firstNum:5.0, secondNum: 4.0)
    //  Signature: (Double, Double) -> Double
func sum(firstNum: Double, secondNum: Double) -> Double {
    return firstNum + secondNum
}
```

    //  Name: sum(firstNum:secondNum)
    //  Name: sum(firstNum:secondNum)
