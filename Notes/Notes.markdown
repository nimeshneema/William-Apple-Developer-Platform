# Notes

Possible key reasons causing you to feel lack of confidence:

-   Having a partial conceptual understanding of the crucial pieces in the toolchain.

-   Gaps in understanding the core fundamentals of Swift language features, syntax and basic concepts.

When approaching the development of a variety of software (apps, widgets, plug-ins) for the Apple platforms (iOS/iPadOS, macOS, watchOS, tvOS, visionOS), what becomes crucial is to have a clear understanding of the various pieces in the toolchain. Some of them are listed below:

-   Foundation framework: The foundation framework provides the crucial basic entities and data structures required in programming for any platform (the bare bones of an app) such as collection data types, memory management, object communication, data persistence, network communication etc. The Foundation framework is crucial when developing apps and solutions for any of Apple platform devices. The Foundation framework also provides the basic skeleton and communication flow/structure necessary for app development.

    The Foundation framework is written in Objective-C. The Foundation framework provides the basic groundwork needed by any app for any of the Apple platform devices.

-   AppKit/UIKit: They respectively provide the user interface elements and the necessary scaffolding needed to support the app architecture for macOS and iOS/iPadOS/watchOS/tvOS/visiosOS apps respectively.

    Both AppKit and UIKit are written in Objective-C.

-   Cocoa framework: The Foundation, AppKit and UIKit frameworks are collectively called Cocoa frameworks.

    There are a bunch of design patterns and architectural concepts in Cocoa. Establishing a good understanding of those concepts is crucial to become a competent developer for Apple's ecosystem of devices.

-   Objective-C programming language: It is an object-oriented programming language based on C programming syntax. Unlike C++ it is a gentler object oriented language. It limit the number of OOPS features and emphasizes use of protocols over subclassing. Protocols are a list of interface (function) defenition and define a particular role. Classes may adopt a protocol and implement functionality declared by the protocoal. Aoption of a protocol is also called as conformace.

    Unlike most other high-level compiled programming languages, Objective-C has a peculiar syntax, especially for method invocation.

    Objective-C language also has an accompanying runtime system while work alongside the program execution and can be interacted with.

-   Swift programming language: It is a modern general-purpose programming language. It is envisioned to span a wide variety of development scenarios such as writing consumer apps but also system apps, kernel extensions, drivers, scalable back-ends etc. and doing so not just for Apple devices, but other operating system platforms as well.

    The majority of app development work before the inception of Swift was done in Objective-C (and C/C++ as required). Swift language was created by adopting good ideas and practises from different modern programming languages.

    The creators intended to make no compromise with the design of the Swift language. It is also specifically designed so it can easily interface with the legacy codebase written in Objective-C. (As we will discuss subsequently, the primary frameworks used for app development are all written in Objective-C).

    The task to rewrite the crucial features offered by the Foundation framework is a work in progress.

-   SwiftUI: Unlike popular belief, SwiftUI is not a programming language. It is a user interface framework.

    The SwiftUI framework is written in Swift programming language. So it assumes having a good understanding of Swift language concepts and features. A lot of beginners who fail to realise this end up having a hard time establishing a good mental model of how to work with it.

    SwiftUI mostly deals with user interface. It is a user interface framework. While the long-term aim is to replace UIKit as the user interface framework, we are currently far from reaching there.

    The holistic goal of SwiftUI is wider, i.e. to become an all-encompassing way to write user interfaces that scale from screens as tiny as an Apple Watch (watchOS), to iPhone and iPad (iOS/iPadOS), to Macs small and large (macOS), all the way to high definition large screen TVs (tvOS).

    Writing a universal app, i.e. a single app that caters to multiple platforms, it becomes easier to manage the user interface programming using SwiftUI, by reusing parts of the interface code, rather than writing the interface for all the various platforms separately (such as AppKit for macOS, UIKit for iOS and also separately for iPadOS, watchOS, tvOS etc.).

    SwiftUI lets developers "declare" the user interface and the user interface elements. No logic or imperative instructions are involved when programming using SwiftUI, the reason why we won't see a lot of conditional (if-else construct) and looping code (for and while) etc. when working with SwiftUI.

-   Combine and Mac Catalyst: There are a host of other technologies which assist with writing asynchronous, event-driven code and speed us up when sharing code across various platforms.

    Apple doesn't intend to take an approach like Microsoft where they are attempting to use a single platform to scale from mobile devices to tablets to desktop computers. Instead, they take an approach where the individual platform identity, characteristics and unique interaction model of each (operating system and hardware) platform such as watch, phone, tablet and desktop are preserved and they intend to create tooling which will help developers maximise code reuse (for both logic and interface) and minimise development efforts. SwiftUI is intended to be a step in this direction with the user interface programming.

Now, a lot of beginners try and start making apps using SwiftUI. While they are able to see some results initially (due to the fact that the framework has been designed to be easy to use and the Xcode tooling provides a WYSIWYG interface, where the SwiftUI subsystem renders the interface instantaneously), the lack of understanding of fundamental design concepts, both in SwiftUI framework and the underlying Swift programming language causes them to falter. And it gets frustrating. And add to it more advanced concepts in SwiftUI and trying to do something more complicated, developers soon starts finding themselves stuck and unable to make any progress.

But it does not have to be this way. There's certainly a way out. There are core fundamental concepts involved separately both in Swift programming language and SwiftUI framework. By taking a structured and step-by-step learning path, it is possible to tackle the entirety of the tooling and see the bigger picture in a clear manner. Here's a draft roadmap of how to proceed:

-   Start by establishing a solid understanding of core fundamental concepts, features and syntax in Swift programming language. It is an absolute must have pre-requisite if one intends to become competent and confident app developer for Apple platform of devices. While the basic constructs in the language are mostly the same as other imperative languages, some special features have been designed and baked into the language to ensure developers write safe (avoiding runtime issues, intdeterminate code), robust and performant code.

    The language has also been designed such that the code can be both expressive (verbose) as well as highly compact at the same time (Swifty code). While neither of the verbosity nor expression of compactness is pushed, but it is onto the developer as to which mode works the best for a given scenario. This way, they get the flexibility of expression that's most suited for the current context.

---
