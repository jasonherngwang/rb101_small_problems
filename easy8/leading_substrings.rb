=begin
P: Understand the Problem
Problem Statement
Write a method that returns all substrings starting from the beginning of a
string. Arrange from shortest to longest.

Inputs:
- 1 string
Outputs:
- 1 array of substrings
Explicit Requirements
- All substrings start from the first character of the original string.
- Array element are arranged from shortest to longest.
Implicit Requirements
- Input string may or may not contain special characters or spaces.
- Letter case does not matter.
- Input could be a blank string.
Clarifying Questions
- Return new object or mutate existing one?
  - New array
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate through string character index, retrieving substring from 0 to x,
where x ranges from 0 to string length - 1.

E: Examples, Test Cases, Edge Cases
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


D: Data Structure
String to array

A: Algorithm
- Call string length n
- Create a range from 0 to n-1.
- Iterate over the range, transforming each element into a string.
  - The string is the substring of the input string, from 0 to the range value.
- Return the transformed array.

C: Code
=end

def leading_substrings(str)
  (0...str.length).map { |index| str[0..index] }
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']