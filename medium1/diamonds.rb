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
- n is positive
- Diamond is filled in.
- Each diamond has 2 more or 2 less stars than the previous.
- Diamond is widest at row (9.fdiv 2).ceil
- Even 1 star can be a diamond, for n == 1.
- Diamonds are spaced using ' ' character.
- Does not necessarily have to have ' ' chars on the right side of the diamond.
Clarifying Questions
- Return new object or mutate existing one? Output to console.
- Input data types always the same? Yes, integer.
- Does output order matter? N/A
- Any domain-specific terms? N/A

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

Second pass
High-level: Create a range consisting of an ascending and a descending portion, 
with an interval of 2. Center each row by padding with spaces until width of n. 


Pseudo-code:
- Create range indicating num of '*' in each row.
  - Ascending portion: 1 to n, step by 2.
  - Descending portion: n-2 to 1, step by 2.
  - Return array of integers.
- Iterate over the array, transforming each integer into a string.
  - Invoke helper method to generate string for each row.
- Print array to console.


Helper Method: Create space-padded string with specified num of stars.
- Arguments: num_stars, row_width
- Use String#center with arguments num_stars and row_width.
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

def generate_row(num_stars, row_width)
  ('*' * num_stars).center(row_width)
end

def diamond(n)
  # (1.step(n, 2) + (n - 2).step(1, -2)).to_a.each do |row|
  (1.step(n, 2) + (n - 2..1).step(-2)).to_a.each do |row|
    p generate_row(row, n)
  end
end

diamond(9)