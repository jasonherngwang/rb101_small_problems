=begin
P: Understand the Problem
Problem Statement
Write a method that takes 2 arrays of numbers and returns a new array
containing the product of each pair of numbers from the arguments with the same
inde.
Inputs:
- 2 arrays of same length
Outputs:
- 1 new array
Explicit Requirements
- Both argument arrays have the same number of elements.
Implicit Requirements
- Order matters.
Clarifying Questions
- Return new object or mutate existing one?
  - New array object
Problem Domain, Domain-Specific Terms
- 

Mental Model
Zip arrays. Map using a block to multiply the 2 elements.

E: Examples, Test Cases, Edge Cases
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


D: Data Structure
Arrays

A: Algorithm
- Zip the arrays together.
- Map over the zipped array.
  - Reduce each pair by multiplying them


C: Code
=end

def multiply_list(arr1, arr2)
  (0..arr1.size - 1).map { |i| arr1[i] * arr2[i] }
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |a, b| a * b }
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])