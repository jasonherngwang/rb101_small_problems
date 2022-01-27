=begin
P: Understand the Problem
Problem Statement
Write a method that takes an Array and returns a nested Array with 2 sub-arrays.
Half the elements are in the first array, and the rest in the second.
For an odd number of elements, the middle element should be in the first array.
Inputs:
- 1 array
Outputs:
- A nested array containing 2 arrays
Explicit Requirements
- Middle element should be in the first sub-array.
Implicit Requirements
- Element order within the sub-array does not matter.
- Original index order matters.
- Empty array should return array of 2 empty arrays.
- Single-element array should return that element in the first array, and an
  empty array as the second sub-array.
Clarifying Questions
- Return new object or mutate existing one?
  - New nested array
- Will the input array be nested?
  - No, but it does not matter.

Problem Domain, Domain-Specific Terms
- 

Mental Model
Approach 1
- Use range-based indexing to directly split into 2 arrays.
  - For odd length, use zero to length / 2 - 1 (integer division)
  - For even length, use zero to length / 2

Approach 2
Partition/filter based on if element index is less than half the length.


E: Examples, Test Cases, Edge Cases
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]


D: Data Structure
Arrays only

A: Algorithm
Approach 1
- Divide array length by 2 (integer division) and store in variable `mid`
  - Subtract 1 if length is even
- Create result array with 2 subarrays
  - First subarray contains elements with index 0 to `mid` (inclusive)
    - Can use slicing or index ranges.
  - Second subarray contains elements with index `mid`+1 to -1
- Return result array.

Approach 2
- Divide array length by 2 (integer division) and store in variable `mid`
  - Subtract 1 if length is even
- Create result array.
- Create first sub-array by filtering the original array, passing in the index
  on each iteration
  - Keep element if index <= `mid`
- Create second sub-array by filtering the original array, passing in the index
  on each iteration
  - Keep element if index > `mid`
- Return result array.

C: Code
=end

# Using index ranges
def halvsies(arr)
  mid = arr.length / 2
  mid -= 1 if arr.length.even?
  [arr[0..mid], arr[mid+1..-1]]
end

# Using selection
def halvsies(arr)
  result = []
  mid = arr.length / 2
  mid -= 1 if arr.length.even?
  result[0] = arr.select.with_index { |elem, i| i <= mid }
  result[1] = arr.select.with_index { |elem, i| i > mid }
  result
end

# Using partition
def halvsies(arr)
  mid = arr.length / 2
  mid -= 1 if arr.length.even?
  arr.partition.with_index { |_, i| i <= mid }
end

# Using slice
def halvsies(arr)
  mid = (arr.length / 2.0).ceil
  first_subarr = arr.slice(0, mid)
  second_subarr = arr.slice(mid, arr.length - mid)
  [first_subarr, second_subarr]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]