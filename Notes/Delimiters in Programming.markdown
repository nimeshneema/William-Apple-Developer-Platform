# Delimiters in Programming

-   Delimiters are special symbols (usually found in pairs) that are used for delimiting content when writing code. They come in various forms. Below is a list of some delimiters along with their formal and causally used names.

    One should make it a practise to use formal names when talking/communicating about delimitiers (or any technical concept and topic for that matter). Well written documentation uses formal names and everyone uses formal names (over casual, self made-up names), it makes for precise communication.

    Following is a list of commonly used delimiters when coding.

    -   `[]`: Brackets (casually: Square brackets).

    -   `{}`: Braces or (casually: Curly brackets or Curly braces).

    -   `()`: Parentheses (casually: Circular brackets or Circle brackets).

    -   `<>`: Chevrons or (casually: Angle brackets).

-   There are two crucial observations when it comes to usage of delimiters:

    -   A different delimiter may be used for the same intent across a different programming languages.

        For e.g. some programming languages uses `{}` to create an array constant:

        ```c
        char name[20] = {'N', 'a', 'm', 'e', '\0'};
        ```

        while some other language uses `[]` to create an array constant:

        ```swift
        var name:Character = ['N', 'a', 'm', 'e']
        ```

    -   A given language may use the same delimiter for a different purpose in a different context.

        For e.g. C uses `{}` both for creating array constant as well as for creating scope/block for a function/condition/loop.

    Thus it becomes crucial to understand the meaning of a symbol and the current context in which we are operating.

-   There are other deminiters as well, such as:

    -   Double quotes and single quotes which are commonly used to contain textual data (such as strings and characters).
