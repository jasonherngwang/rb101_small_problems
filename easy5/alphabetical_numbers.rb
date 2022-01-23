=begin
P: Understand the Problem
Problem Statement
Write a method that takes an Array of Integers between 0 and 19, and returns an 
Array of those Integers sorted based on the English words for each number:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, 
twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Inputs:
- 1 array of integers 0-19
Outputs:
- 1 array of integers, sorted based on their English word representation.
Explicit Requirements
- English word representations are provided.
Implicit Requirements
- Sort in ascending order.
Clarifying Questions
- Return new object or mutate existing one?
  - New object.

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples or Test Cases

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]


D: Data Structure
Use a hash to store integer => word string.

A: Algorithm
- Create a hash with integers and keys, and their string representations as
  values.
- Sort the array by using the word representation as the sort criteria.
- Return thr array.

C: Code
=end

# DIGITS = {
#   0 => 'zero',
#   1 => 'one',
#   2 => 'two',
#   3 => 'three',
#   4 => 'four',
#   5 => 'five',
#   6 => 'six',
#   7 => 'seven',
#   8 => 'eight',
#   9 => 'nine',
#   10 => 'ten',
#   11 => 'eleven',
#   12 => 'twelve',
#   13 => 'thirteen',
#   14 => 'fourteen',
#   15 => 'fifteen',
#   16 => 'sixteen',
#   17 => 'seventeen',
#   18 => 'eighteen',
#   19 => 'nineteen',
# }

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |x| NUMBER_WORDS[x] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

def alphabetic_number_sort(arr)
  arr.sort { |a, b| NUMBER_WORDS[a] <=> NUMBER_WORDS[b] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]