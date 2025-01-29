//
//  AppDelegate.swift
//  HelloSwift
//
//  Created by Nimesh Neema on 16/01/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
        // Name: application(_:didFinishLaunchingWithOptions:)
        // Signature: (UIApplication, [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        var oneNumber = 3.0
        var secondNumber: Double = 4.0
        
        sum(firstNum: oneNumber, secondNum: secondNumber)
        
        return true
    }

        // MARK: UISceneSession Lifecycle
        // Function name: application(_:configurationForConnecting:options:)
        // Signature: (UIApplication, UISceneSession, UIScene.ConnectionOptions) -> UISceneConfiguration
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
            // Called when a new scene session is being created.
            // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

        // Function name: application(_:didDiscardSceneSessions:)
        // Signature: (UIApplication, Set<UISceneSession>) -> ()
        // Signature: (UIApplication, Set<UISceneSession>) -> ()
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
            // Called when the user discards a scene session.
            // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
            // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

        // Invocation: sum(firstParameter: 6, secondParameter: 7)
        // Function name: sum(firstParameter:secondParameter:)
    func sum(firstParameter x:Int, secondParameter y:Int) -> Int {
        let result = x + y
        return result
    }

        // Invocation: sum(of: 5, withSecondNumber: 4, andThirdNumber: 3)
        // Function name: sum(of:withSecondNumber:andThirdNumber:)
    func sum(of firstNumber: Int, withSecondNumber secondNumber: Int, andThirdNumber thirdNumber: Int) -> Int {
        return firstNumber + secondNumber + thirdNumber
    }

        // Method to calculate the product of three numbers
        // Invocation: product(of: 1, withSecondNumber: 2, andThirdNumber: 3)
        // Function name: product(of:withSecondNumber:andThirdNumber:)
    func product(of firstNumber: Int, withSecondNumber secondNumber: Int, andThirdNumber thirdNumber: Int) -> Int {
        return firstNumber * secondNumber * thirdNumber
    }

        // Invocation: sum(5, secondNumber: 4, third: 3)
        // Function name: sum(_:secondNumber:third:)
    func sum(_ first: Int, secondNumber second: Int, third: Int) -> Int {
        return first + second + third
    }
    
        // Invocation: sum(first: 5, second: 4, third: 5)
        // Function name: sum(first:second:third:)
    func sum(first: Int, second: Int, third:Int) -> Int {
        return first + second + third
    }
    
    func say(myName name: String) {
        print(name)
    }
    
    func sayHello() {
        print("Hello")
    }
    
        //  Name: sum(firstNum:secondNum)
        //  Invocation: sum(firstNum:5, secondNum: 4)
        //  Signature: (Int, Int) -> Int
    func sum(firstNum: Int, secondNum: Int) {
        let result = firstNum + secondNum
        print("Int version")
        print(result)
        
        return
    }

        //  Name: sum(firstNum:secondNum)
        //  Invocation: sum(firstNum:5.0, secondNum: 4.0)
        //  Signature: (Double, Double) -> Double
    func sum(firstNum: Double, secondNum: Double) {
        let result = firstNum + secondNum
        print("Double version")
        print(result)
        
        return
    }
}
