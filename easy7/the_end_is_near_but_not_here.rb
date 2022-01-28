=begin
P: Understand the Problem
Problem Statement
Write a method that returns the second-to-last word in the string.

Inputs:
- 1 string of words
Outputs:
- 1 word string
Explicit Requirements
- Input string will have 2+ words.
- A word is a sequence of non-blank characters.
Implicit Requirements
- Words can include special characters.
- Upper/lower case is preserved
Clarifying Questions
- Return new object or mutate existing one?
  - New string object
Problem Domain, Domain-Specific Terms
- 

Mental Model
Split string into array words, using delimiter ' '. Use array index selection to
retrieve the second-to-last element. Return this element.

E: Examples, Test Cases, Edge Cases
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'


D: Data Structure
String to Array. Return string.

A: Algorithm
- Split the string into an array of individual words.
- Retrieve the second-to-last element: arr[-2]

C: Code
=end

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

=begin
Write a version that selects the middle word. It should handle 0 or 1 words.
- For a sentence with an even number of words, return the middle 2 words.
Algorithm
- Return '' if input is empty string.
- Split string into array of words.
- Find midpoint by dividing string length by 2 (integer division)
- Use index selection to retrieve the middle word from the array.
Edge Cases
- For 1-elem string, the algorithm will return element at index 0.
=end
def middle_word(str)
  return '' if str.empty?
  words_array = str.split
  middle_index = (words_array.length.to_f / 2).ceil - 1
  num_words = words_array.length.even? ? 2 : 1
  words_array[middle_index, num_words].join(' ')
end

p middle_word('')
p middle_word('word')
p middle_word('two words')
p middle_word('have three words')
p middle_word('I have four words')