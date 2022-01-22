=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Print all odd numbers from 1 to 99, inclusive, to the console, with each number 
on a separate line.

Inputs:
- None

Outputs:
- 

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Iterate through a range from 1 to 99 (inclusive). Check if number is odd, and
print if so.

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

# (1..99).each { |x| puts x if x.odd? }

# 1.upto(99) { |x| puts x if x.odd? }

puts (1..99).select(&:odd?)