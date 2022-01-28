=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string as an argument and returns an array with
every word to which is appended a space and the word's length.
Inputs:
- 1 string of words separated by spaces
Outputs:
- 1 array of words with with their lengths
Explicit Requirements
- Words are separated by exactly one space.
- Any substring of non-space characters is a word.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model
Split string into array of words. Iterate through array, adding a space and
the word length to each string.

E: Examples, Test Cases, Edge Cases
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []


D: Data Structure


A: Algorithm
Split string into array of words. Iterate through array, adding a space and
the word length to each string.

C: Code
=end

def word_lengths(str)
  str.split.map do |word|
    word + ' ' + word.length.to_s
  end
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []