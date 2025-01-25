//
//  AppDelegate.swift
//  HelloSwift
//
//  Created by Nimesh Neema on 16/01/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            // Override point for customization after application launch.
        
            // Swift enforces very strict typing.
            // No kind of implict conversion is performed by the language itself.
            // If such a conversion is needed, the programmer has to be explicit about it.
        
        var number = 25
        number = Int(36.0)
            // In the example above, in the firt line, the data type to be associated with the variable `number` is implicitly determined from the value of the constant on the right hand side.
            // But Swift also allows us to explicitly specify the data type for a variable using the syntax as demonstated below:
        
        var numericValue:Int = 25
        var anotherNumber:Int
        
            // In the last example, we can leave the assignment of value when creating the variable. The data type is specified explicitly.
            // But we cannot entirly skip both the assignment and the data type because this way the compiler subsystem will have no way to determine the data type to be assoicated with the variable.
        
        var aVariable = "Nimesh"
            // On a variable name, you can do a Option key + Left click to show a pop-over which displays the inferred type of the variable.
            // The most important takeaway here are:
            // 1. Every entity (variables) has to have a data type associate with it at the time of creation.
            // 2. The data type that gets associated with a variable can never change moving forward.
            // 3. Unlike a lot of other programming languages, no automatic or implict coversion can happen by assigning a value of a different data type to a variable of some other data type.
            // 4. Moving forward, if we want to assign a different value to this variable, it can only be via another variable or contant of the same data type.
            // 5. Any conversion has to be made explicitly.
        
        var aStringThatIJustmade:NSString = "HelloWorld"
        
        var myVariable:Int = 12
        print(myVariable)
            
            // There's automatic type inference
            // There's explicit type specification.
        
            // Swift also allows you to create variables as constants.
            // Meaning, once assigned the value can never change.
            // This allows for more optiomal and efficient memory usage by compiler.
            // So if we need some entities in our program whose value will never change,
            // we declare them as constant
            // We use the keyword `let` instead of `var` for the same purpose.
            // And the Swift compiler subsystem is smart enought to detect the variables (var) which are never modified in the code and suggests that you change them to let.
        let valueOfPi = 3.14
        
            // Essentially when creating a variable, you can either create it as a `var` or a `let`.
            // No matter whether you are creating a variable to hold an integer, a fractional number or even an array, a string or even another object, you always use the keyword `var`.
        
        var x:Int = 5 // This is a Struct but not like your C language strcut. Stuct in Swift is more like a class.
        
        aStringThatIJustmade.character(at: 0)
        
        let arithmeticOperation = Arithmetic()
        let sumOfNumbers = arithmeticOperation.sum(of: 5, withSecondNumber: 4, andThirdNumber: 3)
        let productOfNumbers = arithmeticOperation.product(of: 5, withSecondNumber: 4, andThirdNumber: 3)
        print("Sum of 5, 4 and 3: \(sumOfNumbers)")
        print("Product of 5, 4 and 3: \(sumOfNumbers)")
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

