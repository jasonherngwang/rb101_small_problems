=begin
P: Understand the Problem
Problem Statement
Given an array of words, write a program that prints out arrays of words that
are anagrams. Anagrams have the same letters but in a different order.

Inputs:
- 1 array of words
Outputs:
- Print arrays to the screen.
Explicit Requirements
- 
Implicit Requirements
- Input words are unique.
- No spaces or non-alpha chars in words.
- Order does not matter.
- Words are equal length.
Clarifying Questions
- Return new object or mutate existing one?
  - No specified return, just printing.
Problem Domain, Domain-Specific Terms
- 

Mental Model
Split word into chars, 

Store letter combos as hash keys. Iterate through array and check if letters
are the same. Store words as hash value. Retrieve hash.values at the end.

To check anagrams:
-  Split into chars, sort alpha, join. Test equality.
  - Group by shared characters using this criteria

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
- Create a helper method to test if 2 words are anagrams.
  - Split each word into array of chars.
  - Sort alphabetically.
  - Join into a string.
  - Test if both strings are equal
- In main method group_anagrams
  - Use Array#group_by and the helper method as the criteria.
  - Retrieve the result hash's values, and print each array.

C: Code
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

def group_anagrams(array)
  array.group_by { |word| word.chars.sort }
  .each_value { |group| p group }
end

group_anagrams(words)