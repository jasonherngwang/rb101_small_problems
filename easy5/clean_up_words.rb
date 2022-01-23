=begin
P: Understand the Problem
Problem Statement
Given a string of lowercase words and non-alphabetic characters, return a string
with non-alphabetical characters replaced by spaces. Contiguous non-alpha chars 
and spaces should be merged into a single space.
Inputs:
- 1 string
Outputs:
- 1 string with contiguous non-alpha chars and spaces merged into a single 
  space
Explicit Requirements
- 
Implicit Requirements
- 
Clarifying Questions
- 

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples or Test Cases
cleanup("---what's my +*& line?") == ' what s my line '


D: Data Structure
String input
Use array to iterate through characters.
Merge back into a single string.

A: Algorithm
- Split string into array of chars.
- Iterate through array
  - If char not in 'a'..'z', turn it into a space.
- Identify adjacent spaces and merge them.
  - Use regular expression to find one or more spaces.
  - Use substitution to replace them.
- Join array into string.

C: Code
=end

def cleanup(str)
  str_chars = str.chars
  str_chars.map! do |char|
    ('a'..'z').include?(char) ? char : ' '
  end
  str_chars.join.gsub!(/ +/, ' ')
end

p cleanup("---what's my +*& line?")# == ' what s my line '