=begin
P: Understand the Problem
Problem Statement
Given a string of words separated by spaces, write a method that takes this 
string of words and returns a string in which the first and last letters of 
every word are swapped.

You may assume that every word contains at least one letter, and that the 
string will always contain at least one word. You may also assume that each 
string contains nothing but words and spaces.

Inputs:
- 1 string
Outputs:
- 1 string of the same length as the input
Explicit Requirements
- The string will only contain words and spaces.
- Each word will have at least 1 letter.
Implicit Requirements
- 
Clarifying Questions
- 

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples or Test Cases

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


D: Data Structure
Input string.
Convert to array of words to perform operations.
Rejoin into result string.

A: Algorithm
- If string is length 1, return string.
- Split string into array of words, using delimiter ' '.
- Create helper method to swap first and last character.
- Iterate across the array, invoking the helper method on each element.
- Join all elements into a result string, using delimiter ' '.

C: Code
=end

def swap_first_last(str)
  return str if str.length == 1
  str[-1] + str[1, str.length - 2] + str[0]
end



def swap(words)
  words.split(' ').map { |word| swap_first_last(word) } .join(' ')
end

p swap('Oh what a wonderful day it is')# == 'hO thaw a londerfuw yad ti si'
p swap('Abcde')# == 'ebcdA'
p swap('a')# == 'a'


# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word[0], word[-1])
#   end
#   p result
#   result.join(' ')
# end


# p swap('Oh what a wonderful day it is')# == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde')# == 'ebcdA'
# p swap('a')# == 'a'