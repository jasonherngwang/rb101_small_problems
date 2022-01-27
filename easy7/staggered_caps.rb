=begin
P: Understand the Problem
Problem Statement
Write a method. Take a string. Return a new string where every other char is
capitalized.
Inputs:
- 1 string
Outputs:
- 1 string
Explicit Requirements
- Non-characters counts as characters when switching cases.
Implicit Requirements
- First character is always capitalized.
Clarifying Questions
- Return new object or mutate existing one?
  - New string
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate through the character. Use a counter or a toggle. If odd, upcase the 
character. If even, downcase the character.

E: Examples, Test Cases, Edge Cases
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


D: Data Structure
Split string to chars. Transform elements. Join back to a string.

A: Algorithm
Use either an array-of-chars approach, or iterate-thru-chars.
- Split string to chars.
- Iterate through array, bringing the index.
  - If index is even, upcase.
  - If index is odd, downcase.

C: Code
=end

