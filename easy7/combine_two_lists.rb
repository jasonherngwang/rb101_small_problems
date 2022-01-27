=begin
P: Understand the Problem
Problem Statement
Given 2 arrays with the same number of elements, return a single array with the
elements take in alternation (interleaved).
Inputs:
- 2 arrays
Outputs:
- 1 new array
Explicit Requirements
- Arrays are non-empty
Implicit Requirements
- Order must be maintained.
- First array's first element is the first element of the result array.
- Object class does not matter.
Clarifying Questions
- Return new object or mutate existing one?
  - New object
Problem Domain, Domain-Specific Terms
- 

Mental Model
Create new result array. Iterate 0 to array length-1. Add index element from
array 1, then array 2.

E: Examples, Test Cases, Edge Cases
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


D: Data Structure
Arrays only

A: Algorithm
Approach 1
- Create empty result array.
- Create a loop. Iterate from 0 to the array length. While n < array length:
  - Append array1[n] to the result array.
  - Append array2[n] to the result array.
- Return result array.


C: Code
=end

# Basic iteration
def interleave(arr1, arr2)
  result = []
  index = 0
  while index < arr1.length
    result << arr1[index] << arr2[index]
    index += 1
  end
  result
end

# Using Array#zip
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])