=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Inputs:
- 1 string
- 1 positive integer

Outputs:
- Prints the string as many times as the integer

Problem Domain, Domain-Specific Terms:
- N/A

Implicit Requirements:
- No need to perform input validation on string and integer.

Clarifying Questions:
- 

Mental Model:
Set up a loop that will iterate for any many times as the integer.
Invoke a print function on each iteration, to print the string.

Examples or Test Cases
----------------------
Case: Provided example
Inputs: repeat('Hello', 3)
Outputs:
Hello
Hello
Hello


Edge Cases
----------
- 0, nil, "", [], {}, special chars
- Boundary conditions
- Repetition / duplication
- Upper and lower case
- 0, 1, and multiple items in a collection
- Data types
- Exceptions

Case: Empty string 
Inputs: ('', 3)
Outputs: Print three lines of nothing. Empty string is still a string.


Data Structure
--------------


Algorithm
---------


=end

def repeat(str, number_of_repetitions)
  number_of_repetitions.times { puts str }
end

repeat('Hello', 3)
repeat('Hello World', 7)