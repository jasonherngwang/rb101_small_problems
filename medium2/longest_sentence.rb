=begin
P: Understand the Problem
Problem Statement
Read a text file and print the sentence with the most words.
Sentences may end with '.', '!', or '?'.
Sequences w/o spaces or ending chars are words.

Inputs:
- 1 test file
Outputs:
- Print 1 string.
Explicit Requirements
- '--' and similar sequences count as words.
Implicit Requirements
- 
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


A: Algorithm
Read in the text file

C: Code
=end

text = File.open('pg84.txt').read.gsub("\n", ' ').gsub("\r", '')
text1 = text.split(/[.!?]/)
# text2 = text.split(/\.|\?|!/)
longest1 = text1.max_by { |sentence| sentence.length }.strip
# longest2 = text2.sort_by { |sentence| sentence.length }[-1].strip
puts longest1
puts longest1.split.length
# p longest2
# p longest2.split.length