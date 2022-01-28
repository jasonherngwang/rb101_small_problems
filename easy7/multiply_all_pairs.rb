=begin
P: Understand the Problem
Problem Statement
Method takes 2 arrays of numbers and returns a new array containing all
products of all possible combinations, sorted in increasing order.

Inputs:
- 2 arrays
Outputs:
- 1 array
Explicit Requirements
- Neither input is empty
Implicit Requirements
- Number of elements in each array does not matter.
- Order of input arrays does not matter.
Clarifying Questions
- Return new object or mutate existing one?
  - New array object
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate through first array. Inside each iteration, iterate through 2nd array.
Multiply the 2 numbers and add to a result array. Sort and return.

Use Array#product and reduce with multiplication. Sort and return.

E: Examples, Test Cases, Edge Cases
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


D: Data Structure
Arrays

A: Algorithm
Approach 1
- Create result array.
- Iterate through array1
  - Iterate through array2
    - Multiply the current elements from array1 and array 2.
    - Store product in result array
- Sort and return result array.

Approach 2
Use Array#product which returns a nested array of pairs. Use Enumerable#reduce
with multiplication operator to return an array of products. Use Array#sort.

C: Code
=end

def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |elem1|
    arr2.each do |elem2|
      result << elem1 * elem2
    end
  end
  result.sort
end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |pair| pair.reduce(:*) }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2])