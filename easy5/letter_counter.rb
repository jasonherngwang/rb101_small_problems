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


=begin
Second pass
Completed: 10 min

P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Write a method that takes a string with 1+ space-separated words and returns a hash that shows the number of words of difference sizes.

Hash key: word length
Hash value: count of word having that word length

Inputs: 1 String
- Data types always the same?
  - Yes, always a String.
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
  - Empty string => Returns empty hash.
  - Case sensitivity: Does not matter when evaluating string length.
- Validate input? N/A

Outputs: 1 Hash with entries in the format: word length => count
- Print or return?
  - Return new object
- Does element order matter?
  - No apparent order. Hashes are not meant to preserve order.
- Return new object or mutate existing one?
  - New Hash object
- How to handle duplicates?
  - N/A; words with the same length are grouped into the same hash entry, via the count.

Explicit Requirements
- Words consist of any string of characters that do not include a space.

Implicit Requirements - Review problem and examples
- Punctuation is grouped with its adjacent word and contributes to the word length.

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Case: 
Inputs: "What's up doc?"
Outputs: { 6 => 1, 2 => 1, 4 => 1 }
Word      Length
What's        6
up            2
doc?          4


D: Data Structure
--------------------------------------------------------------------------------
Input: String
Intermediate: Array, Hash
- Can split into an array of words and invoke collection methods, such as counting characters.
- Hash can be built up from empty, to create the result hash.
Output: Hash


A: Algorithm
--------------------------------------------------------------------------------
Pseudo-code:
- Create an empty Hash to store the result. Use default value 0.
- Split string into array of words, using space (' ') as the delimiter.
- Iterate through the array, transforming each word to an Integer representing the word length.
- Iterate through the array.
  - If the Integer is not a hash key, create a hash entry for it, setting its value to 1 (representing count)
- Return the result Hash.

Helper method:


C: Code
--------------------------------------------------------------------------------
=end

def word_sizes(str)
  result = Hash.new(0)
  words = str.split
  word_lengths = words.map! { |word| word.size }
  word_lengths.each { |len| result[len] += 1 }
  result
end

def word_sizes(str)
  result = Hash.new(0)
  words = str.split
  word_lengths = words.map! { |word| word.gsub(/[^a-z]/i, '').size }
  word_lengths.each { |len| result[len] += 1 }
  result
end

# def word_sizes(str)
#   counts = str.split.group_by { |word| word.size }
#               .map { |k, v| [k, v.size] }
#               .to_h
#   counts
# end

p word_sizes('Four score and seven.')# == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!')# == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?")# == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('')# == {}