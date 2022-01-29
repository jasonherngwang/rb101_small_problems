=begin
P: Understand the Problem
Problem Statement
Take a sentence string and return with number words replaced by numbers.

Inputs:
- 1 string of words 
Outputs:
- Same string with number words replaced by numbers
Explicit Requirements
- Only numbers 0-9 should be replaced.
Implicit Requirements
- A number word followed by punctuation should be converted to a number while
  preserving the punctuation.
Clarifying Questions
- Return new object or mutate existing one?
- How about words that contain number words, like 'bone' or 'fiver'.

Problem Domain, Domain-Specific Terms
- 

Mental Model
Global substitution iterating through keys of a hash { 'one' => '1', ...}

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
- Create a hash with 10 entries in the form of: { 'one' => '1', ...}
- Iterate through the hash keys.
  - Perform global substitution of the hash key (string) with the value.

C: Code
=end

# NUMBER_WORDS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
#                  'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
#                  'eight' => '8', 'nine' => '9'}

# def word_to_digit(str)
#   NUMBER_WORDS.keys.each do |key|
#     str.gsub!(/\b#{key}\b/i, NUMBER_WORDS[key])
#   end
#   str
# end

# p word_to_digit('Please call me at five five five one two three four. Thanks.')
# p word_to_digit('Please call me at Five fIve fiVE ONE two three four. Thanks.')

=begin
Remove spaces between consecutive numbers that were created.
- Create empty result string.
- Split sentence into array of words.
- Iterate through array.
  - Use regex to check if a number word matches anywhere in the word
    - If not, append the original word, plus a space, to the result string.
    - If so, append it to the result string, with NO SPACE after.
- Remove the last character of the result string if it is a space.
  - Can use String#delete_suffix.
- Use regex to look for 10 digit consecutive integers, and replace it with a 
  formatted string.
=end

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
  result = ''
  # Using this capture group, spaces and punctuation are included in array.
  str_split = str.split(/(\W)/)
  index = 0
  while index < str_split.length
    word = str_split[index]
    if NUMBERS.include? word.downcase
      result << NUMBERS.index(word).to_s
      # If current element is a number and next is a space, skip the space.
      index += 1 if str_split[index + 1] == ' '
    else
      result << word
    end
    index += 1
  end
  # Phone number formatting
  result.gsub!(/\d{10}/) do |num|
    "(#{num[0..2]}) #{num[3..5]}-#{num[6..9]}"
  end
end

# def word_to_digit_nospace(sentence)
#   result = ''
#   words = sentence.split
#   words.each do |word|
#     if NUMBER_WORDS.keys.any? { |key| word =~ /\b#{key}\b/i }
#       NUMBER_WORDS.keys.each do |key|
#         if word =~ /\b#{key}\b/i
#           result << word.gsub!(/\b#{key}\b/i, NUMBER_WORDS[key])
#           break
#         end
#       end
#     else
#       result << word << ' '
#     end
#   end
#   result = result.delete_suffix(' ')
#   result.gsub!(/[0-9]{10}/) do |num|
#     "(#{num[0..2]}) #{num[3..5]}-#{num[6..9]}"
#   end
#   result
# end

p word_to_digit('Please call me at nine one one five five five one two three four. Thanks.')
