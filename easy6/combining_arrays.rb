=begin
P: Understand the Problem
Problem Statement
Combine 2 arrays. The result should not have duplicates.

Inputs:
- 2 arrays
Outputs:
- 1 array of unique values.
Explicit Requirements
- No dupes
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New object since result is not the same length, and 2 input become 1 output.
- Does order matter?
- Will inputs be sorted?
  - Not specifically stated. Assume unsorted.
- Empty arrays?
  - Unclear

Problem Domain, Domain-Specific Terms
- 

Mental Model
1. Combine first and remove dupes after.
2. Create result array. Iterate through both and only add if elem does not 
  exist.

E: Examples, Test Cases, Edge Cases
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]


D: Data Structure
2 input arrays
Create 1 result array.

A: Algorithm
Approach 1
- Combine all elements from both array.
- Use a method to filter uniques.

Approach 2
- Create result array.
- Iterate through each of the 2 arrays.
  - Search result array for the next element.
    - If not found, add the element.
    - If found, move to the next element.
- Return the result array.

Approach 3


C: Code
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

def merge(arr1, arr2)
  result = []
  (arr1+ arr2).each do |elem|
    result << elem unless result.include? elem
  end
  result
end

def merge(arr1, arr2)
  result = []
  arr = (arr1 + arr2).sort
  arr.each_with_index do |elem, index|
    result << elem unless elem == arr[index + 1]
  end
  result
end

def merge(arr1, arr2)
  arr1 | arr2
ends

p merge([1, 3, 5], [3, 6, 9])# == [1, 3, 5, 6, 9]
