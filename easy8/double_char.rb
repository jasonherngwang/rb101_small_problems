=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string and returns a new string where every
character is doubled.
Inputs:
- 1 string
Outputs:
- 1 string
Explicit Requirements
- Case is preserved.
- 1 space should return 2 spaces.
Implicit Requirements
- Blank string return blank string.
Clarifying Questions
- Return new object or mutate existing one?
  - New string
Problem Domain, Domain-Specific Terms
- 

Mental Model
Create empty result string. Iterate over each character, inserting each into
result string twice.

Zip array with itself, flatten, join.

E: Examples, Test Cases, Edge Cases
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''


D: Data Structure


A: Algorithm
- Split string into array of chars.
- Zip with itself.
- Flatten.
- Join into 1 string.

C: Code
=end

def repeater(str)
  char_array = str.chars
  char_array.zip(char_array).join
end

p repeater('Hello')# == "HHeelllloo"
p repeater("Good job!")# == "GGoooodd  jjoobb!!"
p repeater('')# == ''


CONSONANTS = [*'a'..'z'] - %w(a e i o u)
def double_consonants(str)
  result = ''
  str.each_char do |char|
    result << char
    result << char if CONSONANTS.include? char.downcase
  end
  result
end

p double_consonants('String')# == "SSttrrinngg"
p double_consonants("Hello-World!")# == "HHellllo-WWorrlldd!"
p double_consonants("July 4th")# == "JJullyy 4tthh"
p double_consonants('')# == ""