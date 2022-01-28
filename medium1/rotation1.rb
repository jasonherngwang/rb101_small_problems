=begin
P: Understand the Problem
Problem Statement
Write a method that rotates an array by moving the first element to the end.
Do not modify the original array.
Inputs:
- 1 array
Outputs:
- 1 array of same length, different element order.
Explicit Requirements
- Do not use Array#rotate.
Implicit Requirements
- Must accommodate single value array.
Clarifying Questions
- Return new object or mutate existing one?
  - New array
Problem Domain, Domain-Specific Terms
- 

Mental Model
Return index 1 to end, plus index 0 of array.

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


C: Code
=end

def rotate_array(array)
  array.empty? ? array : array[1..] + array[..0]
end

p rotate_array([])
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

def rotate_string(str)
  str.empty? ? str : rotate_array(str.chars).join
end

p rotate_string('') == ''
p rotate_string('f') == 'f'
p rotate_string('abcdef') == 'bcdefa'
p rotate_string('abc def') == 'bc defa'

# Doesn't work if int has leading zeroes.
def rotate_integer(int)
  # int_str = int.to_s
  # int_str.delete_prefix!('0') while int_str[0] == '0'
  rotate_string(int.to_s).to_i
end

p rotate_integer(1) == 1
p rotate_integer(1243) == 2431
p rotate_integer(00021) == 21
p rotate_integer(9299_3) == 29939