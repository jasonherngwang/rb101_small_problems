=begin
P: Understand the Problem
Problem Statement
Write a method that takes an integer argument and returns an array of
integers in sequence from 1 to the number.
Inputs:
- 1 integer
Outputs:
- 1 array
Explicit Requirements
- Argument will always be a valid integer > 0
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New array
Problem Domain, Domain-Specific Terms
- 

Mental Model
Return range converted to array.

E: Examples, Test Cases, Edge Cases
Consider:
- 0, nil, "", [], {}, special chars, symbols
- Negative numbers
- Decimals instead of integers
- Boundary conditions
- Repetition / duplication
- Upper and lower case characters
- 0, 1, and multiple items in a collection
- Data types
- Exceptions
- Missing arguments

Case: 
Inputs: 
Outputs:


D: Data Structure


A: Algorithm
Return range converted to array.

C: Code
=end

def sequence(num)
  num > 0 ? [*1..num] : [*-1.downto(num)]
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5)
p sequence(-3)
p sequence(-1)
p sequence(0)