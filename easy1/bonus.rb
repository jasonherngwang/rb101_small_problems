=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes two arguments, a positive integer and a boolean, and 
calculates the bonus for a given salary. If the boolean is true, the bonus 
should be half of the salary. If the boolean is false, the bonus should be 0.

Inputs:
- 1 positive integer, the salary
- 1 boolean

Outputs:
- 1 integer, the bonus

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
If boolean is true, divide salary integer by 2 and return it. 
If false, return 0.

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

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000