=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.
Words consist of any string of characters that do not include a space.

Inputs:
- 1 string of words.
Outputs:
- 1 hash
Explicit Requirements
- 
Implicit Requirements
- Punctuation attached to a word is included in that word's length.
- Hash keys and values are integers
- Blank string input returns empty hash.
- Hash order does not matter.
Clarifying Questions
- Return new object or mutate existing one?
  - New hash object

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples or Test Cases

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


D: Data Structure
Input string, convert to array of chars.
Store result in hash.

A: Algorithm
- Create empty hash to store result.
- Split string into words, using ' ' as delimiter. 
- Iterate through array
  - Count word length as integer
  - If hash does not have this integer as a key
    - Add key, with value 1
  - If hash containes this integer as a key
    - Increment the value of this key
- Return hash

Approach 2
Transform word array into array of word lengths.
Group by word length.
Iterate through hash, converting values (array) into their sum.

C: Code
=end

def word_sizes(str)
  str.split
     .group_by(&:length)
     .map { |k, v| [k, v.length] }
     .to_h
end

# p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
# p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# p word_sizes('') == {}

def word_sizes_alphabet_only(str)
  str.split
     .map { |word| word.delete('^A-Za-z') }
     .group_by(&:length)
     .map { |k, v| [k, v.length] }
     .to_h
end

p word_sizes_alphabet_only('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes_alphabet_only('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes_alphabet_only("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes_alphabet_only('') == {}