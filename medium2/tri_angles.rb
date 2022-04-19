=begin
P: Understand the Problem
Problem Statement
Given 3 angles of a triangle, determine if it is an invalid, right, acute, or
obtuse triangle.
- Right: 1 angle is 90.
- Acute: All 3 angles < 90
- Obtuse: 1 angle > 90
Inputs:
- 3 integers
Outputs:
- Symbol indicating the type of triangle.
Explicit Requirements
- Arguments are specified in degrees
- Sum of angles must be 180 deg to be a triangle.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 


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
Can put the 3 angles in an array to use array methods.

A: Algorithm
- Put angles in an array.
- Check sum or negative: Return :invalid if sum != 180 OR any are negative.
- Check right angle: Return :right Array includes the value 90.
- Check obtuse: Return :obtuse if Array includes a value over 90.
- Return :acute.

C: Code
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.sum != 180 || angles.any? { |a| a <= 0 }
  return :right if angles.include? 90
  return :obtuse if angles.any? { |a| a > 90 }
  return :acute if angles.all? { |a| a < 90 }
end

def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if angles.any? { |x| x <= 0} || angles.sum != 180
  return :right if angles.any?(90)
  return :acute if angles.all? { |x| x < 90 }
  :obtuse
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid