=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a program that will ask for user's name. The program will then greet the 
user. If the user writes "name!" then the computer yells back to the user.

Inputs:
- User's name: 1 string

Outputs:
- Print greeting with user's name.
  - If last character of name is '!', return special greeting.

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Check last character for '!'.
Print greeting based on last character.

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

print "What is your name? "
name = gets.chomp.strip

if name[-1] == '!'
  while name[-1] == '!'
    name.chop!
  end
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
