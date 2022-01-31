=begin
P: Understand the Problem
Problem Statement
Write a method that merges 2 sorted lists. Do not sort the result array. Build
it element-by-element. Do not mutate the input arrays.
Inputs:
- 2 arrays of numbers
Outputs:
- 1 array, sorted, containing all the elements from the 2 input arrays.
Explicit Requirements
- 
Implicit Requirements
- Equal elements that are in both arrays are adjacent in the result array; 
  their order doesn't matter.
- Must handle empty array.
Clarifying Questions
- Return new object or mutate existing one?
  - New array
Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]


D: Data Structure
Arrays with pointers.

A: Algorithm
- Create a result array
- Start a loop.
  - Compare the elements at the current indices for both arrays.
  - If one element is lower than the other, add the lower element to the result
    array, and remove that element from the array.
  - If both elements are equal, add both, and remove both from their arrays.
  - If one array is empty, then the remaining values in the non-empty array
    are all sorted and larger than the result array being built. Add the
    entire remaining array to the end of the result array.
      - Exit loops since there are no more elements left to add.

C: Code
=end

def merge(array1, array2)
  result = []
  index1, index2 = 0, 0
  loop do
    if index1 == array1.length
      result += array2[index2..-1]
      break
    elsif index2 == array2.length
      result += array1[index1..-1]
      break
    elsif array1[index1] < array2[index2]
      result << array1[index1]
      index1 += 1
    # This accounts for (1) if both elem are equal, (2) elem1 > elem2
    else
      result << array2[index2]
      index2 += 1
    end
  end
  result
end

p merge([1, 5, 9], [2, 6, 8])# == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])# == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5])# == [1, 4, 5]
p merge([1, 4, 5], [])# == [1, 4, 5]