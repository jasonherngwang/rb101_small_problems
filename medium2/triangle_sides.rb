=begin
P: Understand the Problem
Problem Statement
A triangle is classified as follows:
- equilateral All 3 sides are of equal length
- isosceles 2 sides are of equal length, while the 3rd is different
- scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must 
be greater than the length of the longest side, and all sides must have lengths 
greater than 0: if either of these conditions is not satisfied, the triangle is 
invalid.

Write a method that takes the lengths of the 3 sides of a triangle as 
arguments, and returns a symbol :equilateral, :isosceles, :scalene, or 
:invalid depending on whether the triangle is equilateral, isosceles, scalene, 
or invalid.

Inputs:
- 3 integers, the lengths of the sides of the triangle.
Outputs:
- A symbol representing the triangle type, or if it is invalid.
Explicit Requirements
- Only 1 triangle type is possible.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - Return new symbol
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
Data is input as 3 integers; convert to an array for sorting and referencing.

A: Algorithm
Check for validity first
- Any zeroes
- Sum of short sides longer than longest side: Sort array and check.
- side1 == side2?
  - If so, side2 == side3?
    - Equilateral
  - If not, side1 == side3?
    - If so, isosceles
    - If not
      - If not, scalene
C: Code
=end

def triangle(a, b, c)
  sides = [a, b, c].sort
  return :invalid if sides.any?(0) || sides[0..1].sum < sides[2]
  if a == b
    if b == c
      :equilateral
    else
      :isosceles
    end
  else
    if a == c
      :isosceles
    else
      if b == c
        :isosceles
      else
        :scalene
      end
    end
  end
end

def triangle(a, b, c)
  sides = [a, b, c]
  return :invalid if sides.any?(0) || sides.min(2).sum < sides.max
  return :scalene if sides == sides.uniq
  return :equilateral if sides.all?(a)
  return :isosceles
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid