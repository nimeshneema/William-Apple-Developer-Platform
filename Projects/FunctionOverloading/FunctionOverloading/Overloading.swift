//
//  Overloading.swift
//  Hello
//
//  Created by Nimesh Neema on 31/01/25.
//

import Foundation

    // Name: sum(_:_:)
func sum(_ a: Int, _ b: Int) -> Int { a + b }

    //  By default the received parameters cannot be written to.
    //  The parameters can only be used/read. And that's what we want most of the time.
    //  But the passed parameters can be assigned to a `var` inside the function body and can then be written to/modified. But the modifications will persist only within the function body.
func sum(a: Int, b: Int) -> Int {
    var a = a   // this is a statement. A statement doesn't evaluate to a value.
    var b = b
    
    a = 10      // this is an expression. An expression evaluate to a value.
    b = 20
    
        //  In the last line of this function, I can't use `a + b` (skipping the return keyword) as the function body has more than one statements.
        // `a + b` is an expression.
        // `return a + b` is a statement.
    return a + b
}

    //  If the function body consists of just one statement which will evaluate the value to be returned, the return statement can be replaced with the expression itself.

func sum(firstNum: Int, secondNum: Int) -> Int { firstNum + secondNum }

    // Name: sum(_:_:)
func sum(_ a: Double, _ b: Double) -> Double { a + b }

    // Swift does not perform implicit (by itself) conversion of data type
    // Name: sum(_:_:)
func sum(_ a: Int, _ b: Double) -> Double {
        // var a = Double(a)   // Use the value of `a` to create a new/different variable of type Double (but using the same name).
        //  Double(a) can be used directly.
        //  return keyword can be skipped in the following line.
    return Double(a) + b
}

    // Name: sum(_:_:)
func sum(_ a: Int, _ b: Double) -> Int { a + Int(b) }

    // Name: sayHello(_:)
    // Sig: (String) -> String
func sayHello(_ name: String) -> String { "Hello" }

    // Name: sayHello(_:)
    // Sig: (String) -> Int
func sayHello(_ name: String) -> Int { 6 }

    // "\(name)" // String Interpolation in Swift.

    // Name: product(a:b:)
func product(a:Int, b:Int) -> Int { a * b }

    // Name: product(c:d:)
func product(c:Int, d:Int) -> Int { c * d }
