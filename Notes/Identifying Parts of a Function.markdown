# Identifying parts of a function

-   Name: The string that identifies the function name.

-   Parameters: A list of all the parameters (0 or more) that a function accepts.

-   Body: The sequence of instructions that constitute the function logic.

-   Return Type (not the return statement): The data type of value the function returns (or `void` if the function doesn't return any).


## Objective-C

```
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}
```

-   Name: `application:configurationForConnectingSceneSession:options:`

-   Parameters: The function accepts three parameters with the following names:

    -   `application` of (data) type `UIApplication *`.

    -   `connectingSceneSession` of (data) type `UISceneSession *`.

    -   `options` of (data) type `UISceneConnectionOptions *`.

-   Body: The content delimited by the braces.

-   Return Type: `UISceneConfiguration *`. In Objective-C, the return type of a function is mentioned (syntactically), at the beginning, before the function name, enclosed within parentheses. The return type is preceded with either a `+` or a `-` symbol (depending on whether it is a class method or an instance method).

    In Objective-C whenever we have a function declaration or definition (but not the invocation), we either have a `+` or a `-` symbol followed by the return type of the function inside parentheses.

## Swift

```
func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
}
```

-   Name: `application(_:configurationForConnecting:options:)`

-   Parameters: The function accepts three parameters with the following names:

    -   `application` of (data) type `UIApplication`.

    -   `connectingSceneSession` of (data) type `UISceneSession`.

    -   `options` of (data) type `UIScene.ConnectionOptions`.

-   Body: The content delimited by the braces.

-   Return Type: `UISceneConfiguration`. In Swift, the return type of a function is mentioned (syntactically) following the function name and the parameter list, before the function body. The return type is preceded with either an `->` operator.

A Swift function declaration and definition is preceded by the keyword `func` (except for a few cases such as initializer functions).
