=begin
P: Understand the Problem
Problem Statement
Write a method that takes an odd integer `n` and prints a 4-pointed diamond in 
an n x n grid.
Inputs:
- 1 odd integer
Outputs:
- Print a diamond
Explicit Requirements
- Diamond has height n and width n.
Implicit Requirements
- Diamond character is '*'.
- Diamond is surrounded by ' '.
Clarifying Questions
- Return new object or mutate existing one?
  - Print only

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples, Test Cases, Edge Cases
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


D: Data Structure


A: Algorithm
- Create a loop iterates over the range x = (1..n, step 2) + (n-2 down to 1, step 2).
  - Create a string with x asterisks.
  - Pad the string to a final width of n, using spaces.
  - Print the string.

C: Code
=end

def diamond(n)
  [*(1..n).step(2), 
   *(n-2..1).step(-2)]
   .each { |x| puts ('*' * x).center(n) }
end

# def diamond(n)
#   puts
#   [
#     *(1..n).step(2),
#     *(n-2..1).step(-2)
#   ]
#   .each do |x|
#     if x > 1
#       puts ('*' + ' ' * (x-2) + '*').center(n)
#     else
#       puts ('*' * x).center(n)
#     end
#   end
# end

diamond(9)