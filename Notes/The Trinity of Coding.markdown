# The Trinity of Coding

-   The trinity of coding:

    A very simple yet powerful mental model. This will change how you do and view coding forever.

    1.  Sequence: A computer program consists of instructions written in a linear sequence. It executes instructions in the same sequence as they are written.

        INS001
        INS002
        INS003
        INS004
        ...
        ...
        INS00n

    2.  Selection: Selection involves, making a boolean (yes/no) decision and based on the answer, choosing between one of the two alternative sequence of instructions. What we mean is that the decision (question) will only have precisely one of the two answers, either a yes of a no and nothing else.

        INS001
        INS002
        INS003
        INS_QUESTION? {
                // YES
            YES_INS001
            YES_INS002
            YES_INS003
        }
        {   
                // NO
                // This sequence of instructions is optional. We can choose to leave it.
            NO_INS001
            NO_INS002
            NO_INS003
        }
        INS004
        ...
        ...
        INS00n

        Now such a structure may also be nested. A condition within the sequence of instructions in the condition block.

    3.  Iteration: Repeating a sequence of instructions multiple times. Now the count of number of times the sequence of instructions are to be repeated could be determined in one of the two ways:

        -   Repeat the sequence till a selection condition remains true (or false): While loop

        -   Repeat the sequence a pre-determined specific number of times: for loop.

            // Start of code
        INS001
        INS002
        ...
        ...
            // Now we have encountered an iteration instruction. We will evaluate the selection condition written in front of the iteration instruction. If the answer is yes, we will proceed with executing the instructions within the scope of iteration instruction, go till the end, and come back to check the selection condition again. We continue to do this as long as we find the condition to be true/yes.
        INS_while (INS_QUESTION?) {
            INS001
            INS002
            INS003
        }
            // Continue executing any subsequent instructions (if any)
        ...
        ...
        INSn

        Another form is when I know beforehand/advance the number of times I desire to repeat a sequence of instructions.

            // Start of code
        INS001
        INS002
        ...
        ...
            // Now we have encountered an iteration instruction. We will execute the sequence of instructions in the following scope/block the number of times as specified for the iteration instruction. This number is non-negative (zero of positive integer)
        INS_for (counter) {
            INS001
            INS002
            INS003
        }
            // Continue executing any subsequent instructions (if any)
        ...
        ...
        INSn

Now any kind of code (manifestation of logic) is simply a combination of the above three major constructs.
