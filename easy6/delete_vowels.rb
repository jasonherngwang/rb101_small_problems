=begin
P: Understand the Problem
Problem Statement
Write a method that takes an array of strings, and returns an array of the same 
string values, except with the vowels (a, e, i, o, u) removed.
Inputs:
- 1 array of strings
Outputs:
- 1 array the length of the original. Each string has the vowels removed.
Explicit Requirements
- 
Implicit Requirements
- Case insensitive. Remove all of: a, e, i, o, u, A, E, I, O, U
Clarifying Questions
- Return new object or mutate existing one?
  - New array
- Element order matter?
  - Same element order as the original.
- What happens when a string is all vowels.
  - Return empty string.

Problem Domain, Domain-Specific Terms
- 

Mental Model
Transform the array. Iterate over element and delete vowels.

E: Examples, Test Cases, Edge Cases
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


D: Data Structure
Arrays as input and output. Use array methods for iteration.
Use string methods for mutation.

A: Algorithm
- Map over the input array. For each string:
  - Delete characters included in %(a e i o u A E I O U)
- Return transformed array.

C: Code
=end

def remove_vowels(arr)
  # arr.map { |str| str.delete 'aeiouAEIOU'}
  arr.map { |str| str.gsub(/[aeiouAEIOU]/, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']