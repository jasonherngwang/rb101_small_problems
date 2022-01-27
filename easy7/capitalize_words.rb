=begin
P: Understand the Problem
Problem Statement
Method takes a string and returns a new string with all words capitalized.

Inputs:
- 1 string
Outputs:
- 1 string
Explicit Requirements
- Capitalized: First letter capital, all others lowercase.
- Words are sequences of non-blank characters.
Implicit Requirements
- Words in double quotes will not be affected since you cannot capitalize the
  double quote character at the beginning of the word.
Clarifying Questions
- Return new object or mutate existing one?
  - New string
Problem Domain, Domain-Specific Terms
- 

Mental Model
Split to words, capitalize each, merge.

E: Examples, Test Cases, Edge Cases
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


D: Data Structure
String to array, back to string.

A: Algorithm
- Split string to array of words.
- Iterate through array, transforming each word with a capitalization method.
- Merge array using spaces.
- Return result string.

C: Code
=end

def word_cap(str)
  str.split(' ').map(&:capitalize).join(' ')
end

# Without using String#capitalize
def word_cap(str)
  words = str.split.map do |word|
    word[0].upcase + word[1..].downcase
  end
  words.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'