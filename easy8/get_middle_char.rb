=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string and returns the middle character. If the
string has an even number of chars, return the two middle chars.
Inputs:
- 1 string
Outputs:
- 1 string with 1 char if odd, 2 chars if even.
Explicit Requirements
- Allowed to return a space.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model
Find middle index: divide string length by 2 (float div) and subtract if.
Slice the string, taking 1 character if length is odd, 2 if even.

E: Examples, Test Cases, Edge Cases
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'


D: Data Structure


A: Algorithm
- Find middle index: divide string length by 2 (float div), take ceiling, and 
  subtract 1.
- Slice the string, taking 1 character if length is odd, 2 if even.

C: Code
=end

def center_of(str)
  middle_index = (str.length.to_f / 2).ceil - 1
  num_chars = str.length.odd? ? 1 : 2
  str[middle_index, num_chars]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'