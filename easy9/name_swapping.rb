=begin
P: Understand the Problem
Problem Statement
Write a method that take a first name, space, and last name. Return a string
containing the last name, comma, and first name.

Inputs:
- 1 string
Outputs:
- 1 string
Explicit Requirements
- 
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

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
Split and join with comma.

C: Code
=end


def swap_name(name)
  name.gsub(/(\w+) (\w+)/, '\2, \1')
end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'