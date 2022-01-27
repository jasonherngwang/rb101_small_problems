=begin
P: Understand the Problem
Problem Statement
Take string. Swap uppercase to lowercase and vice versa.
Inputs:
- 1 string
Outputs:
- String, case-swapped
Explicit Requirements
- Cannot use String#swapcase.
Implicit Requirements
- Input will be string with length > 0.
- String can have spaces. Spaces and other non-letters stay the same.
Clarifying Questions
- Return new object or mutate existing one?
  - New string
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate through string, checking if letter and up/downcasing it before adding
to a result string.

E: Examples, Test Cases, Edge Cases
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


D: Data Structure
Split string into array of characters. Join back to string.

A: Algorithm
Approach 1
- Split string into character array.
- Iterate through array.
  - Check if char in 'A'..'Z' or 'a'..'z'.
    - If so, up/downcase as necessary.
    - If not, return itself.
- Merge transformed array with spaces.

Approach 2
- Don't use an array. Iterate through string char-by-char.

Approach 3
Use reg expressions to substitute upper for lower case and vice versa.

C: Code
=end

def swapcase(str)
  result = ''
  str.each_char do |char|
    if ('A'..'Z').include? char
      result << char.downcase
    elsif ('a'..'z').include? char
      result << char.upcase
    else
      result << char
    end
  end
  result
end

# Using regex
def swapcase(str)
  result = ''
  str.each_char do |char|
    if char =~ /[A-Z]/
      result << char.downcase
    elsif char =~ /[a-z]/
      result << char.upcase
    else
      result << char
    end
  end
  result
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'