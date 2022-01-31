=begin
P: Understand the Problem
Problem Statement
Write a method that displays an 8-pointed start in an nxn grid. n is an odd
integer greater or equal to 7.

Inputs:
- 1 integer n, which is odd and >= 7
Outputs:
- Print a star using '*' as the character.
Explicit Requirements
- 
Implicit Requirements
- Middle row is stars all the way across.
- First row has stars at the ends, and 1 in the middle.

Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *


D: Data Structure


A: Algorithm
- Create a method draw_row(n) that, given width `n`, prints 1 star at each end,
  and 1 in the middle.
  - This helper method can be invoked for every line except the middle.
- Create a range from n to 3, stepping down by 2 each time.
  - Invoke the helper method over this range.
- Print '*' * n
- Create a range from 3 to n, stepping down by 2 each time.
  - Invoke the helper method over this range.

C: Code
=end

def draw_row(output_width, grid_size)
  spaces = ' ' * ((output_width - 3) / 2)
  puts (['*'] * 3).join(spaces).center(grid_size)
end

def star(grid_size)
  grid_size.step(by: -2, to: 3) { |output_width| draw_row(output_width, grid_size) }
  puts '*' * grid_size
  3.step(by: 2, to: grid_size) { |output_width| draw_row(output_width, grid_size) }
end

star(7)
star(9)
star(17)

=begin
Draw a circle in grid n
      ***
   *       *
 *           *
*             *
 *           *
   *       *
      ***
   =end

def circle(grid_size)
=end