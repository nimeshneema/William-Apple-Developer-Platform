# Repository

This repository aims to compile resources, notes, study material, code samples, projects etc. around Apple Developer platforms.

We intend to to get a solid understanding footing in the development tooling and technologies underlying the Apple Developer ecosystem. While the entire ecosystem is pretty vast, the primary and initial emphasis is to focus on app development tooling for consumer-facing platforms, namely, iOS/iPadOS, macOS, watchOS, visionOS and tvOS.

The primary programming language used for developing apps, widgets and plug-ins is Swift.

Objective-C which preceded Swift has been used for a long time to write apps, libraries, frameworks, widgets and many other user-facing software.

The language has stood the test of time and still remains relevant, the majority emphasis and recommendation is to work with Swift given the choice.

The legacy frameworks which were written to help support writing apps for iOS/iPadOS, macOS, watchOS and tvOS have all been written in Objective-C.

The Swift programming language is designed to gradually move all the development efforts from Objective-C onto itself.

While the features offered by the legacy frameworks gets rewritten in the more modern and robust Swift programming language, Swift language design ensures that it can easily interface with the legacy code written in Objective-C.

A single project can contain both Objective-C and Swift code side-by-side. Since the frameworks themselves are still written in Objective-C, when working on a Swift project, the Xcode subsystem exposes the function and object interfaces written in Objective-C in Swift syntax. Thus it becomes quite seamless to work with the underlying objects and function in Swift language. When building the project, Swift code is compiled separately and linked with pre-compiled object files from the frameworks to give a resulting binary.

---
