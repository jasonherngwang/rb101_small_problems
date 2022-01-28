=begin
P: Understand the Problem
Problem Statement
Write a method that returns a list of all possible substrings of a string.
The list should be ordered by where the string in the substring begins.

Inputs:
- 1 string
Outputs:
- 1 array of substrings
Explicit Requirements
- All strings starting at position 1 come first, and so on.
  - For each position, shorter strings come first.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New array
Problem Domain, Domain-Specific Terms
- 

Mental Model
Invoke leading_substrings on each character of the string. Assemble into a
single result array.

E: Examples, Test Cases, Edge Cases
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


D: Data Structure
Array

A: Algorithm
- Iterate from 0 to the string length - 1.
  - During each iteration, invoke leading_substrings, which returns an array.
  - Store this result array in a larger array.
- Flatten the larger array.

C: Code
=end

def leading_substrings(str)
  (0...str.length).map { |index| str[0..index] }
end

def substrings(str)
  (0...str.length).map { |index| leading_substrings(str[index..-1]) }.flatten
end

p substrings('abcde')