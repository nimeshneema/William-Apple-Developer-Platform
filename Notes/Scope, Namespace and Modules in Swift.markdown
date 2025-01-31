# Scope, Namespace and Modules in Swift

-   Things/entities in Swift has scope.

-   Dictate the ability to be seen by other things.

-   Things are nested inside other things, creating a nested hierarchy of things.

-   Things can see things at their own level and at a higher level containing them.

-   The levels are:

    -   A module is a scope.

    -   A file is a scope.

    -   Curly braces are a scope.

-   Things also have lifetime, which is effectively equivalent to their scope.

-   A thing lives as long as its surrounding scope lives.

---

## Namespace

-   A named region of a program.

-   The name of things inside a namespace cannot be reached by things outside without passing through the region's name.

---

## Modules

-   Top level namespaces.

-   An app is also a namespace.

-   When a module is imported, all the top level declarations of that module becomes visible to your code and won't require the name of the module to be mentioned to access the top-level items in the module.

---
