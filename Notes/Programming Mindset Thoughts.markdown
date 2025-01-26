# Programming Mindset Thoughts

-   Programming is two-fold activity:

    -   Thinking & Designing (True programming)

    -   Coding (Helps manifest thoughts/ideas into tangible software).

-   Programming consists mostly of thinking and designing. It's akin to creative art forms such as painting and making music. Writing code (which itself is an art form in its own right), is more about manifesting the ideas.

-   Try to keep thoughts and designs simple and clean.

-   Don't complicate things unnecessarily. Aspire to come up with simple designs.

-   Establish a solid understanding of fundamentals. Reason with first principles.

-   Computer architecture design and programming constitute layers upon layers of encapsulation and abstraction.

-   Only get into learning till deeper layers of encapsulation that's required for performing the task at hand. Assume that the lower layer works fine as per the defined interface contract.

-   The programming tools (languages, frameworks etc.) should never get in the way. Mastery over the tools lets a developer focus solely on getting their ideas translated into real software. Getting good with the tooling (such that they become an extension of ourselves) is a rewarding strategy in long run.

-   It is not a massive finished program that teaches programming, but an exposition of the thought process that developed that program. To become a good programmer, it is important to master the art of thought process, more than anything else.

-   It always helps and is recommended to have clarity of thought when programming.

-   A piece of code is an evolution of thought processess. It stats tiny but goes through a lot of changes and increments. Thus it is very difficult to gauge the thought process that led to the final output in the form of code. Code is just a means we use to manifest our ideas and thoughts.

-   Don't use magic numbers. Make them explicit and clear. Or use devices such as symbolic constants or supporting (constant) variables (constant variables are a feature available in certain programming languages which lets us create a variable that can't have its value mutated after first assignment). Magic numbers may be hard to spot (differentiate from other occurances of the same number which are not magic number or a different magic number with the same face value).

-   Be very precise and concise in the choice of words (talking about technical writing, not just code. You will be a much better programmer).

-   Whenever in doubt, be explicit about usage of an operator and necessary bracketing in an expression. The compiler will compile the code anyways (as long as it is syntactically correct) and the computer will run the code anyways (as long as it is logically correct). But we should strive to make it easy to read for others (including our own future self).

-   How do you eat an elephant? One bite at a time (in small pieces).

    Trying to eat an elephant in one go (trying to parse a complex expression or a feature in programming language in one shot) is both incredibly difficlut and an impossible thing to do.

-   When learning a new programming language, until we have understood something, don't simply assume it to be something that we know from some other langauge. Don't assume unless formally learned.

-   In different contextes same thing (symbol, token, terminology) could mean differently even within the same programming language or the environement. It baffels one (unless you have a solid understanding of the fundamenal concepts).

    Enumeration in C sample code:

    ```
    #include <stdio.h>

    enum Day {
        SUNDAY,    // Default value is 0
        MONDAY,    // Value is 1
        TUESDAY,   // Value is 2
        WEDNESDAY, // Value is 3
        THURSDAY,  // Value is 4
        FRIDAY,    // Value is 5
        SATURDAY   // Value is 6
    };

    int main() {
        enum Day today = WEDNESDAY;
        
        if (today == WEDNESDAY) {
            printf("It's Wednesday!\n");
        }
        return 0;
    }
    ```

    Enumeration could mean two things:

    -   Enumerating (traversing) through a list

    -   Enumeration, creating a (custom) data type (a list of constants) in C programming language.

    ```
        // Enumerating through the items in the array `arr`
    for (i = 0 ; i < 5 ; i++) {
        printf("%d", arr[i]);
    }
    ```

-   A solid understanding (conceptual clarity) of the fundamentals gives you a very powerful mental model to "reason" when programming. With such a mindset, the tool (programming language) gets out of the way and you are able to reason about the solution design and seamlessly tranlate into code.
