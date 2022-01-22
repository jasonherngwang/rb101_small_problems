=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one argument, a positive integer, and returns a list 
of the digits in the number.

Inputs:
- 1 positive integer

Outputs:
- List of digits in the number

Problem Domain, Domain-Specific Terms:
- Digits are individual numbers.

Implicit Requirements:
- Digits do not have to be unique.

Clarifying Questions:
- 

Mental Model:
Convert the number to a string. Split it into a list characters. Convert each
element back to integers.

Examples or Test Cases
----------------------
Case: Single digit
Inputs: 1
Outputs: [1]

Case: Multiple digits
Inputs: 12345
Outputs: [1, 2, 3, 4, 5]

Edge Cases
----------
- 0, nil, "", [], {}, special chars
- Boundary conditions
- Repetition / duplication
- Upper and lower case
- 0, 1, and multiple items in a collection
- Data types
- Exceptions

Case: 
Inputs: 
Outputs:

Data Structure
--------------
Use an array for the output.

Algorithm
---------
Same as mental model.

=end

def digit_list(x)
  x.to_s.chars.map(&:to_i)
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)

# Brute Force
def digit_list(x)
  digits = []
  loop do
    x, remainder = x.divmod(10)
    digits.unshift(remainder)
    break if x == 0
  end
  digits
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)