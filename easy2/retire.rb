=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Build a program that displays when the user will retire and how many years she 
has to work till retirement.

Inputs:
- Age: 1 integer
- Retirement are: 1 integer

Outputs:
- Current year: 1 integer
- Retirement year: 1 integer
- Years until retirement: 1 integer

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Subtract age from retirement age.
Find current year and add the difference to it.

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

print 'What is your age? '
age = gets.to_i
print 'At what age would you like to retire? '
retirement_age = gets.to_i

years_to_retirement = retirement_age - age

current_year = Time.now.year
retirement_year = current_year + years_to_retirement
puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} years of work to go!"
