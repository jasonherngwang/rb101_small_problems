=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string and returns true if all characters are
uppercase, false otherwise. Ignore non-alphabetic characters.
Inputs:
- 1 string
Outputs:
- Boolean
Explicit Requirements
- Ignore non-alpha chars.
Implicit Requirements
- Spaces are allowed.
- Blank string returns true.
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model
Remove non-alpha characters. Check if all remaining chars are in the set A-Z.

Examine each character. If not a special char, check if char in set A-Z.

Check if there are any chars from a-z in the string.
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
Check if there are any chars from a-z in the string.

C: Code
=end

def uppercase?(str)
  !(str =~ /[a-z]/)
end
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true