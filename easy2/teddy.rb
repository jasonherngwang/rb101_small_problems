=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Build a program that randomly generates and prints Teddy's age. To get the age, 
you should generate a random number between 20 and 200.

Inputs:
- None

Outputs:
- String containing Teddy's age.
  - Randomly generated number between 20 and 200 (inclusive), interpolated into
    the string.

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:


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

def teddy
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

teddy

def announce_age(name)
  name = 'Teddy' if name.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

puts 'Enter your name:'
name = gets.chomp
announce_age(name)