=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string argument and returns a new string that 
contains the value of the original string with all consecutive duplicate 
characters collapsed into a single character. You may not use String#squeeze or 
String#squeeze!.

Inputs:
- 1 string
Outputs:
- 1 string, with consecutive duplicate characters collapsed
Explicit Requirements
- Cannot use squeeze method.
Implicit Requirements
- Empty string returns empty string.
- lowercase characters and numbers may be present.
Clarifying Questions
- Return new object or mutate existing one?
  - New object
Problem Domain, Domain-Specific Terms
- 

Mental Model

E: Examples or Test Cases
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

D: Data Structure
String manipulation

A: Algorithm
Approach 1
Use regex to substitute 1+ occurrences of alphanumeric characters with 
themselves.

Approach 2: Iterative
- Create empty array `result`.
- Convert string to array of chars.
- Iterate through the array.
  - If the current element is not equal to the last element of `result`, concat
    it to the end.
- Join the result array into a string and return.

C: Code
=end

def crunch(str)
  str.gsub(/(.)\1+/, '\1')
end

# def crunch(str)
#   result = []
#   str.chars.each do |char|
#     result << char unless char == result.last
#   end
#   result.join
# end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''