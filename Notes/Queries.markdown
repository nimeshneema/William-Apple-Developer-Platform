# Queries

-   When working in a Swift language project and accessing the Cocoa (Foundation, AppKit and UIKit) APIs which are originally written in Objective-C, how does the inter-language communication become possible?

    The interfaces of Objective-C APIs and objects from the Cocoa framework are translated into Swift language compatible interfaces. This makes it easy for Swift project to easily access and consume the APIs.

    Some specialised syntax is required for types of objects and interfaces which cannot be seamlessly "translated" in such a way.

    An Objective-C function interface such as the one below:

    `- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions`

    It's a convention in Cocoa apps to use descriptive prose like names for functions.

    gets translated into Swift equivalent as below:

    `func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool`

    Some notes on Objective-C syntax:

    In Objective-C unlike most other high level languages, the function arguments are interspersed between the name of the function. It is by design and it is done, so as to make reading the invocation very natural.

    A line of code in Objective-C reads more naturally like a sentence, rather than the function name containing the verb and all the various parameters listed at the end.

    In Objective-c our code reads more like a like a fill-in the blanks.

    Objective-C highly encourages developer to make verbose names for functions and variables.

    It is intended such that the code reads more naturally like a sentence.

    The only con being lengthy lines of code. But such a design for naming the entities is highly encourage.

    Using prose like naming for functions is a widely adopted convention, but not a syntactical rule.

    Using this approach also makes the interface act as documentation. While they are not a replacement for the documentation itself which is authoritative, but gives a good clue in terms of utility of the API.

---

-   How general purpose is Swift? Can I make a back-end application and have the same language throughout?

    Swift is designed to be a general purpose language and a replacement for languages such as C. It could span from writing consumer apps to device drives, scalable back-ends, system apps, kernel extensions all the way to operating systems.

    Apart from the 1st party frameworks available for developing for Apple platforms, there's lack of 3rd party libraries and frameworks which in my opinion has restricted the utility of writing scalable back-ends (also the other back-end solutions are pretty mature which makes writing back-ends in Swift less preferred a choice in general).

---

-   Note: In Swift language, there are no separate files for the interface and the implementation (which is unlike what we are used to seeing in Objective-C).

---

-   For nested data structures such as objects or dictionaries, how does the mutability work?

For the reference data types such as objects (an object which is an instance of a class, itself may have properties which are int or string), the properties themselves can be mutated even if the original object is assigned to a let variable.

(I will be able to answer this question more formally and in a better way once we have discussed class types in Swift. There are 4 types objects can be created in Swift. Class, Struct, Enum and Actors)

---
