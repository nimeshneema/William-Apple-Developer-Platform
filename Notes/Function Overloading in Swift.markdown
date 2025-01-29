# Function Overloading in Swift

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
