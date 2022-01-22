=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a program that asks the user to enter an integer greater than 0, then 
asks if the user wants to determine the sum or product of all numbers between 
1 and the entered integer.

Inputs:
- 1 positive integer, named n
- User input string: 'sum' or 'product'

Outputs:
- 1 integer, the sum or product of all numbers between 1 and n

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Create an array containing all numbers between 1 and n. Reduce the array with
binary operations of + or *, depending on the user's input.

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

puts ">> Please enter an integer greater than 0:"
n = gets.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  puts "The sum of the integers between 1 and #{n} is #{(1..n).reduce(:+)}."
else
  puts "The product of the integers between 1 and #{n} is #{(1..n).reduce(:*)}."
end