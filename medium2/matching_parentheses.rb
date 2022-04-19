=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string and returns true if all parentheses are
properly balanced.
Inputs:
- 1 string
Outputs:
- Boolean
Explicit Requirements
- Parentheses must occur in matching pairs '(' and ')'.
Implicit Requirements
- String may not have any parentheses.
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model


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
Array as stack.

A: Algorithm
- Initialize an empty array to use as a stack.
- Iterate through each char.
  - Detecting '(', add it to the stack.
  - Detecting ')', remove it from the stack.
    - Return false if trying to remove and the stack is empty.
- Return true if stack is empty

C: Code
=end

require 'pry'

PAIRED_CHARS = { '(' => ')', '[' => ']', '{' => '}' }

def balanced?(str)
  stack = []
  str.each_char do |char|
    if ['"', "'"].include?(char) && !stack.include?(char)
      stack.push(char)
    elsif ['"', "'"].include? char
      return false unless stack.pop == char
    elsif PAIRED_CHARS.keys.include?(char)
      stack.push(char)
    elsif PAIRED_CHARS.values.include? char
      return false unless stack.pop == PAIRED_CHARS.key(char)
    end
  end
  stack.empty?
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

p balanced?('What {is} "this?"') == true
p balanced?('What is" this?') == false
p balanced?("What 'is this?") == false
p balanced?('{(What) [is this]}?') == true
p balanced?('({What)] (is this))?') == false
p balanced?('Hey!') == true
p balanced?(']Hey!(') == false
p balanced?('What ((is))) up(') == false

p balanced?('What [(is)] this?') == true
p balanced?('What [(is) this?') == false
p balanced?('What [(is]) this?') == false
p balanced?('{What [(is) this]?}') == true
p balanced?('({What [(is) this]?})') == true
p balanced?('({What [(is) this]?)}') == false
p balanced?('({What [("is") this]?})') == true
p balanced?('({What "[(is) this]?"})') == true
p balanced?("({What [('is') this]?})") == true
p balanced?("({What [('i('s')') this]?})") == false