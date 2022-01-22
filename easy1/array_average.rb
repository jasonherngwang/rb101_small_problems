=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one argument, an array containing integers, and 
returns the average of all numbers in the array. The array will never be empty 
and the numbers will always be positive integers. Your result should also be an 
integer.

Inputs:
- 1 array containing positive integers

Outputs:
- Average of all numbers in array, as an integer

Problem Domain, Domain-Specific Terms:
- Integer division removes the remainder.

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Sum numbers and divide by array length.

Examples or Test Cases
----------------------
Case: Given example.
Inputs: [9, 47, 23, 95, 16, 52]
Outputs: 40


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

def average(arr)
  arr.reduce(:+) / arr.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def average(arr)
  arr.sum / arr.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def average(arr)
  arr.sum.to_f / arr.length
end

puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])