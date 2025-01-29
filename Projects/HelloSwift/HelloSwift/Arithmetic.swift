//
//  Arithmetic.swift
//  HelloSwift
//
//  Created by Nimesh Neema on 22/01/25.
//

import Foundation

    // Arithmetic class
class Arithmetic {

        // Method to calculate the sum of three numbers
        // Signature: (Int, Int, Int) -> Int
    func sum(of firstNumber: Int, withSecondNumber secondNumber: Int, andThirdNumber thirdNumber: Int) -> Int {
        return firstNumber + secondNumber + thirdNumber
    }

        // Method to calculate the product of three numbers
        // Signature: (Int, Int, Int) -> Int
    func product(of firstNumber: Int, withSecondNumber secondNumber: Int, andThirdNumber thirdNumber: Int) -> Int {
        return firstNumber * secondNumber * thirdNumber
    }

        // Signature: (Int, Int, Int) -> Int
    func sum(_ first: Int, secondNumber second: Int, third: Int) -> Int {
        return first + second + third
    }
    
        // Name: sum(first:second:third:)
        // Signature: (Int, Int, Int) -> Int
    func sum(first: Int, second: Int, third:Int) -> Int {
        return first + second + third
    }
}
