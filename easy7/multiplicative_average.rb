=begin
P: Understand the Problem
Problem Statement
Write a method that takes an Array, multiplies the numbers together, divides
by the number of entries, and prints the result, rounding to 3 decimal places.

Inputs:
- 1 array
Outputs:
- Prints a string representation of the number, which has 3 decimal places
Explicit Requirements
- Array will not be empty.
- Result must have 3 decimal places, rounded or not.
Implicit Requirements
- Output is a side effect, not a return value.
- Even if numeric result is an integer, the string representation must
  resemble a float.
Clarifying Questions
- Return new object or mutate existing one?
  - No return value, just printing.
Problem Domain, Domain-Specific Terms
- 

Mental Model
Perform multiplication from beginning to end, reducing array to a single value.
Don't need to mathematically round. Format the string to 3 decimal places.

E: Examples, Test Cases, Edge Cases
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


D: Data Structure
Array to Number to String

A: Algorithm
- Iterate through the array, reducing it to a single number. Can use 
  `Enumerable#reduce`. Use multiplication (*) as the binary operator.
- Divide by original array's length.
- Format the string to force 3 decimal places.

C: Code
=end

def show_multiplicative_average(arr)
  puts format("The result is %.3f", arr.reduce(:*).to_f / arr.length)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667