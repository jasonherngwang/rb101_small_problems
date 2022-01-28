=begin
P: Understand the Problem
Problem Statement
Write a method that takes 2 integers as arguments: a count and a starting number.
Return an array with the same number of elements as the count. The values are
multiples of the starting number.
Inputs:
- 2 integers. Count is 0 or greater.
Outputs:
- 1 array of multiples
Explicit Requirements
- 
Implicit Requirements
- Multiples must be in order.
- Must accommodate negative starting integers.
- Count of 0 will return empty array.
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model


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
- Return empty array if count is 0.
- Create array of consecutive number 1 to count.
- Transform array
  - Each value is replaced with itself multiplied by the starting number.

C: Code
=end

def sequence(count, start_num)
  # (1..count).map { |x| x * start_num}
  count.times.map { |x| (x + 1) * start_num}
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []