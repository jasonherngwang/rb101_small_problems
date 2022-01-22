=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one argument, a string, and returns a new string with 
the words in reverse order.

Inputs:
- 1 string

Outputs:
- The orignal string, reversed.

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- Must handle empty string, or a string with only spaces.

Clarifying Questions:
- 

Mental Model:
Split the string by spaces ' ', into an array. If array is empty return ''.
Otherwise, reverse array and join the elements using ' ', into a string.

Examples or Test Cases
----------------------
Case: Given example
Inputs: 'Hello World'
Outputs: 'World Hello'

Case: Given example
Inputs: 'Reverse these words'
Outputs: 'words these Reverse'

Case: Given example
Inputs: ''
Outputs: ''

Case: Given example
Inputs: '     '
Outputs: ''


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

def reverse_sentence(str)
  # join returns an empty string if array == []
  str.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == ''