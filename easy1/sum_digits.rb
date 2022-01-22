=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one argument, a positive integer, and returns the sum 
of its digits.

Inputs:
- 1 positive integer

Outputs:
- Sum of digits in the integer.

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Convert integer to string. Split into array of characters. Reduce to a sum.

Examples or Test Cases
----------------------
Case:
Inputs:
Outputs:


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


Algorithm
---------


=end

def sum(x)
  x.to_s.chars.map(&:to_i).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45