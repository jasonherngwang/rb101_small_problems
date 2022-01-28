=begin
P: Understand the Problem
Problem Statement
Given an array of name components and a hash of job attributes, return a 
greeting.

Inputs:
- 1 array of 2+ elements
Outputs:
- 1 string
Explicit Requirements
- Full name consists of the array elements joined by a single space.
- Title and occupation should be joined by a single space.
Implicit Requirements
- Array elements are likely but not necessarily strings.
Clarifying Questions
- Return new object or mutate existing one?
  - Return new string.

Problem Domain, Domain-Specific Terms
- 

Mental Model
String interpolation. Join array elements.

E: Examples, Test Cases, Edge Cases
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.


D: Data Structure


A: Algorithm
- Create the full name by joining the array elements.
  - Convert each element to a string in case it is a number.
- Use string interpolation and insert the full name, title, and occupation.

C: Code
=end

def greetings(name_arr, occupation_hsh)
  full_name = name_arr.join(' ')
  "Hello, #{full_name}! Nice to have a "\
  "#{occupation_hsh[:title]} #{occupation_hsh[:occupation]} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })