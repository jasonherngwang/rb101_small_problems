=begin
P: Understand the Problem
Problem Statement
Write a method that takes a number as an argument. If positive, return the
negative of that number. If 0 or negative, return the original number.

Inputs:
- 1 number
Outputs:
- 1 number
Explicit Requirements
- 
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - Original object if <= 0, new object if > 0
Problem Domain, Domain-Specific Terms
- 

Mental Model
Check for negative or zero. If so, return itself. If not return its negative
version.

E: Examples, Test Cases, Edge Cases
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby


D: Data Structure


A: Algorithm
Check for negative or zero. If so, return itself. If not return its negative
version.

C: Code
=end

def negative(num)
  # num <= 0 ? num : -num
  -num.abs
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby