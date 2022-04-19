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


=begin
Second attempt
Completed in <8 min

P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Write a method that takes an array of strings and returns an array of the same string values, with vowels removed from each string.

Inputs: Array of Strings
- Data types always the same? Yes
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
  - Empty input array? Return empty array.
  - Empty string object in array? Return empty strings at those positions.
  - Case sensitive? Yes, do not modify case of any characters.
- Validate input? N/A

Outputs:
- Print or return? Return new object or mutate existing?
  - New array of strings.
- Does element order matter?
  - Same order as original array.
- How to handle duplicates? N/A

Explicit Requirements
- New array must be same length as input array.

Implicit Requirements - Review problem and examples
- 

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Case: 
Inputs: %w(green YELLOW black white)
Outputs: %w(grn YLLW blck wht)
green: Remove 'e' and 'e'
YELLOW: Remove 'E' and 'O'
black: Remove 'a'
white: Remove 'i' and 'e'


D: Data Structure
--------------------------------------------------------------------------------
Input: Array
Intermediate: Array
- Use collection methods such as filtering
Output: Array


A: Algorithm
--------------------------------------------------------------------------------
Pseudo-code:
- Iterate over strings in input array.
  - Use helper method to delete vowels.
- Return array

Helper method: Delete vowels
- Use String delete method.


C: Code
--------------------------------------------------------------------------------
=end

def remove_vowels(arr)
  # arr.map { |word| word.delete('aeiouAEIOU') }
  # arr.map { |word| word.gsub(/[aeiou]/i, '') }
  arr.map { |word| word.tr('aeiouAEIOU', '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']