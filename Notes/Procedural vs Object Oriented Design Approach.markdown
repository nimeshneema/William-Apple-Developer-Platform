# Procedural vs Object Oriented Design Approach

-   What's the difference between procedural approach vs object oriented approach to designing a solution?

-   We are talking in terms of how we think when we design an architectural solution.

-   Compare between a mob and an army.

-   Mentally always keep a clear cut distinction between the terms:

    -   Programming: involves thinking, designing followed by architecture and solution. Once we are able to figure out/design a solution for a particular type of a problem, it makes sense to reuse the same architectural solution for similar scenarios.

    and

    -   Coding: using a tool (a programming language along-with a pre-written library of functions/classes) to manifest our design into a concrete form.

People often use the two terms interchangeably.

Now when we are designing a solution, in procedural design, we write a sequence of logical instructions to solve a problem. As an example:

```
save this value in that variable.
copy this value at that memory location
evaluate this expression and copy the result at this memory address.
```

Now we can also club/package a bunch of reusable instructions in the form of a function so that we don't have to rewrite them again. We simply pass some parameters and the instructions inside the function act on the parameters and give us the desired result (as long as the function instructions are correct). An example is sum function.

```
    // calcuateLoanEMIWith(principalAmount:loanTenureInYears:andTheRateOfInterest:)
function calcuateLoanEMIWith(principalAmount principal:Int, loanTenureInYears years: Int, andTheRateOfInterest rate: Double) -> Double {

}
```

With time, when programmers started tackling more and more complex problems and tried coding them using procedural/logical instructions, the programs:

1. Stated to grow too large and complex.
2. After a certain scale, the complexity made it very difficult to reliably manage the codebase.
3. A new design approach was though to tackle the growing complexity of solutions.

Object orientation is a more scalable design approach to tackle complex problems.

I'll teach you the bare concept required to understand the practical aspects of object oriented coding.

The following is a blueprint for an entity:

-   Entity: Human

-   Attributes:

    -   name

    -   gender

    -   address

    -   domicile


Let's say a city has a population of 5 million. All the 5 million people have individual identity, no one human is exactly the same as the other. Everyone has a distinct identity.

There are certain/activities/functionalities that are depicted by all of the humans or certain things that every single human can be asked to do

-   Functionalities:

    -   depart()

    -   walk()

    -   runForElection()

    -   moveOutFromCity()

The above are the functionalities that either every one of human is capable of doing or can be instructed to perform.

The following is a blueprint for another entity:

-   Entity: Dog

-   Attributes:

    -   breed

    -   weight

    -   color

    -   isNeutered (boolean type with only yes/no values)

    -   registrationNumber

-   Functionalities:

    -   reproduce()

    -   bark()

    -   run()

    -   eat()

    -   flip()

    -   poop()

We identify an entity involved in the system which we are designing and then identify all the associated attributes and the functionalities. Now, we identify all the various possible entities.

Now a blueprint is simply a specification consisting of:

-   name of the entity.

-   properties/attributes associated with the entity.

-   available functionalities.

When we are designing a system, we come up with the relevant attributes and functionalities for an entity. We also come up with all the various entities required to model the system. This is a very iterative and complex process. You have to continuously refine the design and only then you come up with a collection of entities (classes)

Such a blueprint/specification is crucial as the first step of program.

Now this blueprint is called a class in object oriented programming.

Now once we have the blueprint, we manifest it into a concrete entity. We create an instance or an object.

There is a difference between a class (which is specification) and an object/instance.

Object oriented design makes for a more mature mental model capable of tacking complex and large codebases.

Which one of the following two set of instructions with similar result is easier to manage:

```
for (int i = 0; i < 10; i++) {
    arr[i] = i
}

arr[0] = 0;
arr[1] = 1;
arr[2] = 2;
```

Object oriented design is a more scalable and mature mental model to tackle complex problem (large codebase).

Most frameworks today are object oriented.

Now what happens is, an object oriented framework comes with a library of classes (alongside library of functions)

a class itself contains functions and attributes (variables)

List of instances:

```
Human1      14      female      some address
Human2      37      male        some address
```

Coding is just using tools. Programming languages are easy to understand but complex to use tools.

we also have to learn the art of using the tools and getting creative with it.

In an object oriented library or a framework, we are provided with tens or hundreds of classes. These are the classes which are so common building blocks are useful in a wide variety of applications.

Now, we hand pick and manifest classes into objects as per the needs of our program. and change their available attributes as per our needs and instruct them to do things as want them.

As needed we can also define custom classes as per our business logic.

Object-oriented programming gives us a very powerful and high level mental model that helps us in easily reason about more complex scenarios.

Rather than implementing a logic, we reason/think more in terms of how the objects interact with each other.
