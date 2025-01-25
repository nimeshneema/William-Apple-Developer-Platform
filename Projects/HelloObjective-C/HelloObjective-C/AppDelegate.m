//
//  AppDelegate.m
//  HelloObjective-C
//
//  Created by Nimesh Neema on 20/01/25.
//

#import "AppDelegate.h"
#import "Arithmetic.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        // Override point for customization after application launch.
    
    Arithmetic *arithmeticOperation = [[Arithmetic alloc] init];
    NSLog(@"Sum of 5, 4 and 3: %d", [arithmeticOperation sumOfNumber:5 withSecondNumber:4 andThirdNumber:3]);
    NSLog(@"Product of 5, 4 and 3: %d", [arithmeticOperation productOfNumber:5 withSecondNumber:4 andThirdNumber:3]);
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
