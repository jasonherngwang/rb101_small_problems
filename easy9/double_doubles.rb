=begin
P: Understand the Problem
Problem Statement
A double number has an even number of digits, and the left-side digits are the
same as the right-side digits.
Inputs:
- 1 number
Outputs:
- 1 number, double the original number if it is NOT a double number.
Explicit Requirements
- 
Implicit Requirements
- Inputs will be integers.
Clarifying Questions
- Return new object or mutate existing one?
  - New number object
Problem Domain, Domain-Specific Terms
- 

Mental Model
Check if double number: Convert to string and compare left and right sides.
Double if not double number.

E: Examples, Test Cases, Edge Cases
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10


D: Data Structure


A: Algorithm
- Create helper method to check if double number:
  - Convert number to string.
  - Find middle index by dividing string length by 2.
  - Compare halves: string index 0 to middle index - 1, and middle index to end.
    - If halves equal return true.
    - Otherwise return false.
- In function definition
  - Check if number is a double number.
    - If so, return the number.
    - If not, return double the number.

C: Code
=end

def is_double_number?(num)
  num_str = num.to_s
  middle_index = num_str.size / 2
  num_str[0...middle_index] == num_str[middle_index..]
end

def twice(num)
  is_double_number?(num) ? num : num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
p twice(1)