# Identifying parts of a function

-   Name

-   Body

-   Parameters

-   Return Type (not the return statement)


## Objective-C

```
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}
```

-   Name:

-   Parameters:

-   Return Type: `UISceneConfiguration *`. In Objective-C, the return type of a function is mentioned (syntactically), at the beginning before the function name. The return type is preceded with either a `+` or a `-` symbol. The return type is enclosed in parentheses.

    In Objective-C whenever we have a function declaration or definition (but not the invocation), we have either a `+` or a `-` symbol followed by the return type of the function inside parentheses.

## Swift

```
func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
}
```

-   Name:

-   Parameters:

-   Return Type: `UISceneConfiguration` 
