//
//  Overloading.swift
//  HelloSwift
//
//  Created by Nimesh Neema on 30/01/25.
//

import Foundation

    // Name: sum(_:_:)
    // Signature: (Int, Int) -> Int
func sum(_ x: Int, _ y: Int) -> Int {
    return x + y
}

    // Name: sum(_:_:)
    // Signature: (Double, Double) -> Double
func sum(_ x: Double, _ y: Double) -> Double {
    return x + y
}


func say(_:String) -> String {
    "Hello"
}

// If I have a single expression as the only part of a function body, the result of evaluation of that expression is the return value.
//  In such cases, Swift allows us to skip the return keyword.

//  Putting it informally, this is allowed in function with a single line body.
