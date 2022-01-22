=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one argument, a string containing one or more words, 
and returns the given string with words that contain five or more characters 
reversed. Each string will consist of only letters and spaces. Spaces should be 
included only when more than one word is present.

Inputs:
- 1 string

Outputs:
- The string with individual words reversed if those words have >= characters.

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
-

Clarifying Questions:
- 

Mental Model:
Split the string, by single spaces ' ', into an array.
Iterate through the array. If the word length is >= 5 chars, reverse it.
Join the elements using ' ', into a string.

Examples or Test Cases
----------------------
Case: Given example
Inputs: 'Professional'
Outputs: 'lanoisseforP'

Case: Given example
Inputs: 'Walk around the block'
Outputs: 'Walk dnuora the kcolb

Case: Given example
Inputs: 'Launch School'
Outputs: 'hcnuaL loohcS'


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

def reverse_words(str)
  arr = str.split

  arr.map! do |word|
    word.length >= 5 ? word.reverse : word
  end
  
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS