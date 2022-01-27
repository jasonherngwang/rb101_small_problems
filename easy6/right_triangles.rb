=begin
P: Understand the Problem
Problem Statement
Take a positive integer `n` and display a right triangle with `n` starts on 
both short sides.

Inputs:
- 1 integer
Outputs:
- Print a right triangle
Explicit Requirements
- 
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - N/A. Side effects only.
Problem Domain, Domain-Specific Terms
- 

Mental Model
From x = 1 to n, print (n-1) spaces and x stars.

E: Examples, Test Cases, Edge Cases
triangle(5)

    *
   **
  ***
 ****
*****

D: Data Structure
Iterate over a range.

A: Algorithm
- Iterate x = 1 to n.
  - Print x * ' ' + (n-x) * '*'

C: Code
=end

def triangle(n)
  puts
  (1..n).each do |x|
    puts ' ' * (n - x) + '*' * x
  end
end


=begin
bottom-right
n-1 space + 1 star
0   space + n star

bottom-left
1 star + n-1 spaces
n star + 0   space

top-right
0   star + n spaces
n-1 star + 1 space

top-left
n star + 0   space
1 star + n-1 spaces

If bottom

('*' * x).rjust(n, ' ') for x = 1 to n
('*' * x).ljust(n, ' ') for x = 1 to n


=end

# def triangle(n, corner_location: 'bottom-right')
#   char = '*'
#   pad_char = ' '

#   case corner_location
#   when 'bottom-right'
#     (1..n).each do |x|
#       puts (char * x).rjust(n, pad_char)
#     end
#   when 'bottom-left'
#     (1..n).each do |x|
#       puts (char * x).ljust(n, pad_char)
#     end
#   when 'top-right'
#     [*1..n].reverse.each do |x|
#       puts (char * x).rjust(n, pad_char)
#     end
#   when 'top-left'
#     [*1..n].reverse.each do |x|
#       puts (char * x).ljust(n, pad_char)
#     end
#   end
# end

# top_bottom: 'bottom' or 'top'
# left_right: 'left' or 'right'
def triangle(n, top_bottom: 'bottom', left_right: 'right')
  char = '*'
  pad_char = ' '
  puts

  case top_bottom
  when 'bottom' then range = 1..n
  when 'top'    then range = n.downto(1)
  end

  case left_right
  when 'left'  then justify_method = :ljust 
  when 'right' then justify_method = :rjust
  end

  range.each do |x|
    puts (char * x).send(justify_method, n, pad_char)
  end
end

# def triangle(n, corner_location: 'bottom-right')
#   puts

#   range_first_char = [*0..n-1].reverse
#   first_char = ' '
#   range_second_char = [*1..n]
#   second_char = '*'
  
#   case corner_location
#   when 'bottom-left'
#     range_first_char = [*1..n]
#     first_char = '*'
#     range_second_char = [*0..n-1].reverse
#     second_char = ' '
#   when 'top-right'
#     range_first_char = [*0..n-1]
#     first_char = ' '
#     range_second_char = [*1..n].reverse
#     second_char = '*'
#   when 'top-left'
#     range_first_char = [*1..n].reverse
#     first_char = '*'
#     range_second_char = [*0..n-1]
#     second_char = ' '
#   end

#   n.times do |n|
#     puts first_char * range_first_char[n] + second_char * range_second_char[n]
#   end
# end

triangle(5, top_bottom: 'bottom', left_right: 'left')
triangle(5, top_bottom: 'bottom', left_right: 'right')
triangle(5, top_bottom: 'top', left_right: 'left')
triangle(5, top_bottom: 'top', left_right: 'right')
