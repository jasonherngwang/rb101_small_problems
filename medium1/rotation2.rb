=begin
P: Understand the Problem
Problem Statement
Write a method that rotates the last `n` digits of a number.

Inputs:
- 2 number: the number to rotate, and the number of digits to rotate.
Outputs:
- 1 number
Explicit Requirements
- Rotating 1 digits returns the original number.
- n is a positive integer.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New number
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
Take first (n-1) characters and append the result of rotate_string on the last n
characters.

C: Code
=end


def rotate_array(array)
  array.empty? ? array : array[1..] + array[..0]
end

def rotate_string(str)
  str.empty? ? str : rotate_array(str.chars).join
end

def rotate_rightmost_digits(num, n)
  num_str = num.to_s
  (num_str[0...-n] + rotate_string(num_str[-n..])).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917