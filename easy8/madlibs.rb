=begin
P: Understand the Problem
Problem Statement
Prompt user for noun, verb, adverb, adjective. Inject those into a story.

Inputs:
- Prompt user for 4 strings.
Outputs:
- 1 string containing those 4 strings.
Explicit Requirements
- 
Implicit Requirements
- No input validation on word type.
Clarifying Questions
- Return new object or mutate existing one?
- New string
Problem Domain, Domain-Specific Terms
- 

Mental Model
Use string interpolation to insert user input into a string.

E: Examples, Test Cases, Edge Cases
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!


D: Data Structure
Strings

A: Algorithm
- Prompt user for noun, verb, adverb, adjective.
- Set up a string with interpolation. Provide user input as arguments.

C: Code
=end

def madlibs
  print 'Enter a noun: '
  noun = gets.chomp
  print 'Enter a verb: '
  verb = gets.chomp
  print 'Enter a adjective: '
  adjective = gets.chomp
  print 'Enter a adverb: '
  adverb = gets.chomp
  "The #{adjective} #{noun} likes to #{verb} #{adverb}."
end

p madlibs