//
//  AppDelegate.m
//  HelloWorld
//
//  Created by Nimesh Neema on 16/01/25.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        // Override point for customization after application launch.
    
    NSString *aStringThatIJustmade = @"HelloWorld";
        // NSString is a class defined in the Foundation framework
        // aStringThatIJustmade is an object or an instance of the NSString class.
        // In Objective-C we are used to working with the pointer syntax when creating an object reference.
        // A C programming language example:
        // int x = 10;
        // int *p = &x; pointer syntax
        // Similar pointer syntax is used in Objective-C to create object reference.
        // This is because Objective-C is heavily based on C and only adds a few basic object oriented features.
        // We formally say that objective-c has added support for objects to C.
    
    [aStringThatIJustmade characterAtIndex:0];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


 - (UISceneConfiguration *)application:(UIApplication *)application
configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession
                               options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration"
                                          sessionRole:connectingSceneSession.role
    ];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
