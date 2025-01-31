//
//  AppDelegate.swift
//  Hello
//
//  Created by Nimesh Neema on 31/01/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            // Override point for customization after application launch.
        
            //  Signature: (Int, Int) -> Int
            //  Here, the Swift compiler code analysis subsystem within Xcode is unambiguously able to determine the correct variant of sum function to invoke from the file `Overloading.swift`.
        print(sum(5,7))
        
            //  The correct variant of the function can be unambiguously determined as there are no other overloaded versions.
        print(sum(a: 6, b: 3))
        
            //  Same as the previous invocation.
        print(sum(firstNum: 3, secondNum: 2))
        
        //  Signature: (Double, Double) -> Double
        //  Here, the Swift compiler code analysis subsystem within Xcode is unambiguously able to determine the correct variant of sum function to invoke from the file `Overloading.swift`.
        print(sum(3.9, 4.2))
        
            //  As long as the code invoking the function is able to unambiguously identify the correct variant of the overloaded function, compiler doesn't complaint.
            //  Static Analyzer is the underlying subsystem within Xcode that is constantly analyzing the code code as it is typed for any compilation issues.
            
            //  What could happen if the static analyser is unable to unambiguously determine?
            //  The static analyzer flashes an error in the Xcode editor.
            //  The static analyzer is unavailable when writing Swift code in, say, a text editor.
        
            //  If the Static analyzer is unable to disambiguate, we have to manually disambiguate the function call.
            //  Swift has a special syntax, using the `as` keyword, baked into the language.
            //  The syntax is demonstrated below and explained in subsequent comments.
        
        var abcd = (sayHello(_:) as (String) -> String)("William")
        
            //  If we wish to manually disambiguate an overloaded function invocation, we use the `as` keyword to specify the exact variant of the function to invoke from among all the available overloaded variants.
        
            //  I am wanting/asking to invoke a specific variant (disambiguated with the help of signature) of the overloaded function.
        
            //  The statement involves the following pieces:
        
            //  Function name (mentioned till the point it becomes unambiguous for the analyzer)
            //  followed by the `as` keyword.
            //  followed by the function signature
            //  the entire thing is enclosed inside a pair of parentheses.
            //  outside of parentheses, the arguments are supplied inside another pair of parentheses.
            //  The outer/second pair of parentheses contain the parameters to be passed.
            //  Now such a call is clearly disambiguated call.
        
            // Any function in Swift can be invoked this way, but this is not required if the call is unambiguous or non-overloaded function is involved.
        
        var x = (sum(firstNum:secondNum:) as (Int, Int) -> Int)(50, 30)
        
        let yy = (product(c:d:) as (Int, Int) -> Int)(5,3)
        
            //  When using the `as` keyword for disambiguation, we only need to mention the name of the function till the point it becomes unambiguous.
            //  If the function name contains externalized parameter names, they are not specified in the second pair of parentheses, just the parameters in sequence.
        
        print(x)
        
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
