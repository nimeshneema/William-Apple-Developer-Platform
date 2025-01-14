# README

## Help building mental model of SwiftUI

I've worked through most of the SwiftUI tutorials at developer.apple.com, but don't have a good understanding of how the pieces go together or why what I typed works. I would like to be able to build a better mental model of SwiftUI and have a better understanding of the syntax so that I can work independently.

Understanding intricacies and quirks and establish a solid grounding in the fundamentals to be able to build on top of it.

---

## Notes

The key reasons causing you to feel lack of confidence being:

-   Having a partial conceptual understanding of the crucial pieces in the toolchain.

-   Gaps in understanding of the core fundamentals of Swift language features, syntax and basic concepts.

When approaching the development of the variety of software (apps, widgets, plug-ins) for major Apple platforms (iOS/iPadOS, macOS, watchOS), what becomes crucial is to have a very clear understanding of the various pieces in the toolchain. They are listed as follows:

-   Swift programming language: It is a general purpose and modern programming language. The language is envisioned to span a wide variety of development scenarios such as writing consumer apps but also system apps, kernel extensions, drivers, scalable back-ends etc. and doing so not just for Apple devices, but other operating system platforms as well.

    The majority of app development work before the inception of Swift was done Objective-C (and C/C++ as needed). Swift language was created by adopting good ideas and practises from a whole bunch of modern programming language.

    While the creators have intended to make no compromises with the design of the Swift language, it is also specifically designed so that it can easily interface with the legacy codebase written in Objective-C. (As we will discuss subsequently, the primary frameworks used for app development on macOS and iOS/iPadOS, watchOS are all written in Objective-C).

    The work to rewrite the crucial features offered by Foundation framework are in progress.

-   Foundation framework: The foundation framework provides the crucial basic entities and data structures involved in programming for any platform (the bare bones of an app) such as collection data types, memory management, object communication, data persistence, network communication etc. The Foundation framework is crucial when developing apps and solutions for any of the Apple device platform. The Foundation framework also provides the basic skeleton and communication flow/structure necessary for app development.

    The Foundation framework is written in Objective-C. Foundation framework provides the basic groundwork needed by any app for any of the Apple platform device.

-   AppKit/UIKit: They respectively provide the user interface elements and the necessary scaffolding needed to support the app architecture for macOS and iOS/iPadOS/watchOS/tvOS apps respectively.

    Both AppKit and UIKit are originally written in Objective-C.

-   Cocoa framework: The Foundation, AppKit (macOS) and UIKit (iOS/iPadOS/watchOS/tvOS) frameworks are collectively called Cocoa frameworks.

    There are a bunch of design patterns and concepts in Cocoa. Establishing a good understanding of them is crucial to become a competent developer for Apple ecosystem of devices.

-   SwiftUI: Unlike the popular belief, SwiftUI is not a programming language. It is a user interface framework.

    The SwiftUI framework is written in Swift programming language. So it assumes a having a good understanding of Swift language concepts and features. A lot of beginner who fail to realise this end up having a hard time establishing a good mental model of how to work with it.

    SwiftUI mostly deals with user-interface. It is a user interface framework. While the long term aim is to replace UIKit as the user interface framework, we are not fully there yet.

    The holistic goal of SwiftUI is wider, i.e. to become an all encompassing way to write user interfaces that scales from screens as tiny as a watch (watchOS), to iPhone and iPad (iOS/iPadOS), to Macs small and large (macOS), all the way to high definition large screen TVs (tvOS).

    Writing a universal app, i.e. a single app that caters to multiple platforms, it becomes easier to manage the user interface programming using SwiftUI, by reusing parts of the interface code, rather than writing the interface for all the various platforms separately (such as AppKit for macOS, UIKit for iOS and also separately for iPadOS, watchOS, tvOS etc.).

    SwiftUI lets developers "declare" the user interface and the user interface elements. No logic or imperative instructions are involved when programming using SwiftUI, the reason why we won't much of conditionals (if-else constructs) and looping etc. when working with SwiftUI.

-   Combine and Mac Catalyst: There are a host of other technologies which assist with writing asynchronous, event driven code and speeds us up when sharing code across various platforms.

    Apple doesn't intend to take an approach like Microsoft where they are attempting to use a single platform to scale from mobile devices to tablets to desktop computers. Instead, they take an approach where the individual platform identity, characteristics and unique interaction model of each platform such as watch, phone, tablet and desktop are preserved and they intend to create tooling which will help developers maximise code reuse (for both logic and interface) and minimise development efforts. SwiftUI is intended to be a step in this direction with user interface programming.

Now, a lot of beginners try and start making apps using SwiftUI. While they are able to see some results initially (due to the fact that the framework has been designed to be easy to use and the Xcode tooling provides a WYSIWYG interface, where the SwiftUI subsystem renders the interface instantaneously), the lack of understanding of fundamental design concepts, both in SwiftUI framework and the underlying Swift programming language causes them to hit falter again and again. And it gets frustrating. And add to it more advanced concepts in SwiftUI and trying to do something more complicated, a developers soon starts finding themselves stuck and unable to make progress.

But it does not have to be this way. There's certainly a way out. There are core fundamental concepts involved separately both in Swift programming language and SwiftUI framework. By taking a structured and step-by-step learning path, it is possible to tackle the entirety of the tooling and see the bigger picture in a very clear manner. Here's a draft roadmap of how to proceed:

-   Start by establishing a solid understanding of core fundamental concepts, features and syntax in Swift programming language. It is an absolute must have pre-requisite if one intends to become competent and confident app developer for Apple platform of devices. While the basic constructs in the language are mostly the same as other imperative languages, some special features have been designed and baked into the language to ensure developers write safe (avoiding runtime issues), robust and performant code.

    The language has also been designed such that the code can be both expressive (verbose) as well as highly compact at the same time. While neither of the verbosity nor expression of compactness is pushed, but it is onto the developer as to which mode works the best for a given scenario. This way, they get the flexibility of expression that's most suited for the current context.

---

## Repository

This repository aims to compile resources, notes, study material, code samples, projects etc. around Apple Developer platforms.

We intend to to get a solid understanding footing in the development tooling and technologies underlying Apple Developer ecosystem. While the entire ecosystem is pretty vast, the primary and initial emphasis is to focus on app development tooling for consumer facing platforms, namely, iOS/iPadOS, macOS, watchOS and tvOS.

The primary programming language used for developing apps, widgets and plug-ins is Swift.

Objective-C which preceded Swift has been used for a long time to write apps, libraries , frameworks, widgets and many other user facing software.

The language has stood the test of time and still remains relevant, the majority emphasis and recommendation is to work with Swift given the choice.

The legacy frameworks which were written to help support writing apps for iOS/iPadOS, macOS, watchOS and tvOS has all been written in Objective-C.

The Swift programming language is designed to gradually move all the development efforts from Objective-C onto itself.

While the features offered by the legacy frameworks gets rewritten in the more modern and robust Swift programming language, Swift language design ensures that it can easily interface with the legacy code written in Objective-C.

---

## Goal

-   To become competent and confident in understanding of Apple developer tooling (languages, frameworks and technologies) such that we are able to express and develop our ideas easily and seamlessly in the form of apps/software. This will include becoming competent in Swift, SwiftUI, Cocoa framework and other crucial tooling and technology, both 1st party and 3rd party.

-   To learn and become confident in being able to write robust, scalable, performant and stable code for Apple platform devices. This will involve establishing a deeper understanding of the design principles and patterns behind the underlying tooling and developing the right mindset and point of view. We start by understanding the design principles and the motivation that led to their design which will help us develop the correct mindset. Coupling this by writing lot of real world code and practise will help us become both a competent and confident developer.

By taking this approach, the ultimate aim is to get the tools out of the way, so that it enables us to express our ideas in the form of apps seamless.

---
