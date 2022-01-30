=begin
P: Understand the Problem
Problem Statement
Write a method that computes the difference between:
- Square of sum of first `n` positive integers.
- Sum of squares of first `n` positive integers.
Inputs:
- 1 integer
Outputs:
- 1 integer representing the difference
Explicit Requirements
- Input will be a positive integer
Implicit Requirements
- First number will be greater. Result will be 0 or a positive integer.
Clarifying Questions
- Return new object or mutate existing one?
  - New integer
Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150


D: Data Structure
Can use Range or array

A: Algorithm
Compute both values using array/range methods, and subtract

C: Code
=end

def sum_square_difference(n)
  (1..n).sum ** 2 - (1..n).sum(&:abs2)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150