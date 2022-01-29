=begin
P: Understand the Problem
Problem Statement
Write a method that returns the maximum rotation of a number. A maximum
rotation is when you fix an increasing number of digits at the front, and
rotate the remaining digits until further rotations would not change the 
number.
Inputs:
- 1 number
Outputs:
- The number, maximally rotated
Explicit Requirements
- Can use rotate_rightmost_digits from the previous exercise.
- Drop any leading zeros.
- There will not be multiple zeroes.
Implicit Requirements
- Rotating a single digits returns the same digit.
- Must handle single zeroes.
Clarifying Questions
- Return new object or mutate existing one?
  - Return new 
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
Approach 1: Basic iteration
- Create an empty result string.
- Create a loop
  - Set the parameter to the result of invoking rotate_rightmost_digits on it.
  - Convert the parameter to a string.
  - Remove the first character and append to the result string.
  - Check if the remaining string is empty.
    - If so, break loop.
    - If not, convert it to a number, and assign this value to the parameter.
- Convert result string to an integer, and return

Approach 2
- Convert num to string and split into array of chars.
- Starting from the first element and ending at the next-to-last element:
  - Move the element to the end.
  - Repeat until there is only one character to move.
- Join the array back into a string, and convert to integer.
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

def max_rotation(num)
  result = ''
  num_str = num.to_s
  loop do
    # p "Initial: #{num_str}"
    num_str = rotate_string(num_str)
    # p "After rotation: #{num_str}"
    result += num_str[0]
    num_str = num_str[1..-1]
    # p "After removing 1st char: #{num_str}"
    break if num_str == ''
  end
  # p "Final result: #{result.to_i}"
  result.to_i
end

def max_rotation(num)
  digits = num.to_s.chars
  (0..digits.length - 2).each do |index|
    digits << digits.delete_at(index)
  end
  digits.join.to_i
end


p max_rotation(735291)# == 321579
p max_rotation(735000291)
p max_rotation(3)# == 3
p max_rotation(35)# == 53
p max_rotation(105)# == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146)# == 7_321_609_845