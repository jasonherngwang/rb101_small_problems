=begin
P: Understand the Problem
Problem Statement
Write a method that calculates and returns the index of the first Fib number
that has the number of digits specified in the argument.
Inputs:
- 1 integer
Outputs:
- 1 integer
Explicit Requirements
- First number has an index of 1, not 0.
Implicit Requirements
- Most likely will need to calculate the Fib sequence.
- Inputs will be 2 or higher, since the sequence starts with a 1-digit number.
- Return value is an integer, not a string.
- There are no commas or decimals involved.
Clarifying Questions
- Return new object or mutate existing one?
  - New Integer object.

Problem Domain, Domain-Specific Terms
- Fib starts with 1, 1. Every number after is the sum of the previous 2.

Mental Model
Starting from (1, 1), calculate the next Fib number and check its length.
Repeat until the length condition is satisfied. Convert int to string to find
length.

E: Examples, Test Cases, Edge Cases
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847


D: Data Structure
2 Integer variables to store the past 2 numbers. No need to store the values in
an array.

A: Algorithm
- Create a Integer counter variable to increment by 1 every time a new Fib
  number is calculated.
    - Initialize to 2 since the first 2 numbers will not satisfy the condition.
- Create 2 integer variables, initialized to 1 and 1, as the starting values of
  the sequence.
- Create a loop
  - Create an integer variable to store the sum of the last 2 integers.
  - Assign the first number to the second, and the second to the sum.
  - Increment the counter by 1.
  - Perform checks of number length:
    - Convert the sum to a string.
    - Check if the string length is equal to the argument.
      - If so, return the counter and break out of the loop.

C: Code
=end

def find_fibonacci_index_by_length(num_digits)
  index = 2
  first = 1
  second = 1
  loop do
    sum = first + second
    first = second
    second = sum
    index += 1
    break index if sum.to_s.length >= num_digits
  end
end

p find_fibonacci_index_by_length(2)# == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)# == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)# == 45
p find_fibonacci_index_by_length(100)# == 476
p find_fibonacci_index_by_length(1000)# == 4782
p find_fibonacci_index_by_length(10000)# == 47847


def fib_recursive(num_digits, first=1, second=1, index=3)
  sum = first + second
  return index if sum.to_s.size >= num_digits
  fib(num_digits, first=second, second=sum, index=index + 1)
end

p fib_recursive(2)# == 7          # 1 1 2 3 5 8 13
p fib_recursive(3)# == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p fib_recursive(10)# == 45
p fib_recursive(100)# == 476
p fib_recursive(1000)# == 4782
# p fib_recursive(10000)# == 47847
