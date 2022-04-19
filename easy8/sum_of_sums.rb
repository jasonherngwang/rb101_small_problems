=begin
P: Understand the Problem
Problem Statement
Write a method that takes an Array of numbers and returns the sum of sums 
for each leading subsequence.
Inputs:
- 1 array of numbers
Outputs:
- 1 number, the sum of sums
Explicit Requirements
- Array will have at least 1 number.
Implicit Requirements
- All subsequences start from the first array element.
- Array order matters.
- For an array of length n, there are n possible subsequences.
- Numbers are not necessarily Integers.
Clarifying Questions
- Return new object or mutate existing one?
  - New number object.

Problem Domain, Domain-Specific Terms
- 

Mental Model
For array of length n, iterate x from 0 to n-1, retrieving the subsequence from 
0 to x. Reduce the subsequence to a single value using addition. Add to a
running total, or to an array and reduce the array using addition.

E: Examples, Test Cases, Edge Cases
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


D: Data Structure
Array

A: Algorithm
- Input array of length n
- Create a result array []
- Iterate through the range 0 to n-1, using variable named x.
  - Retrieve subsequence of input array, from 0..x.
  - Reduce this subsequence to its sum.
  - Concat to result array.
- Reduce result array to the sum of its elements.
- Result result array.

C: Code
=end

def sum_of_sums(array)
  result = []
  array.length.times do |x|
    result << array[0..x].sum
  end
  result.sum
end


def sum_of_sums(arr)
  (0..arr.size - 1).map { |i| arr[0..i].sum }.sum
end

def sum_of_sums(array)
  array.map.with_index { |_, index| array[0..index].sum }.sum
end

p sum_of_sums([3, 5, 2])# == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3])# == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])# == 4
p sum_of_sums([1, 2, 3, 4, 5])# == 35