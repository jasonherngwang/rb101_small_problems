=begin
P: Understand the Problem
Problem Statement
Given an unordered array where only 1 value occurs twice, find that value.
Inputs:
- 1 array of numbers, unordered
Outputs:
- 1 number
Explicit Requirements
- Only 1 duplicate
Implicit Requirements
- Array values are integers.
Clarifying Questions
- Return new object or mutate existing one?
  - New Integer object
  - Don't modify the original object.

Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate. Keep track of element count in a hash; return element if count == 2.

Perform count on each object. Return element with count of 2.

Use Array#tally method. Return key where value == 2.

E: Examples, Test Cases, Edge Cases
find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73


D: Data Structure
Can use array or hash.

A: Algorithm
Approach 1
- Initialize empty hash `tally`.
- Iterate through the array.
  - If element is a key in tally, the dupe is found. Return the element.
  - If not, create a new k/v pair in tally. Key is the number, value is 1.

Approach 1.5
- Same as Approach 1, but use a Set and don't store any values.

Approach 2
- Find the difference between the array and a unique version of it.

Approach 3
- Use Array#tally to get a hash of value counts. Store in variable `tally`.
- Find key where count is 2.

C: Code
=end

def find_dup(arr)
  tally = {}
  arr.each do |elem|
    return elem if tally.key? elem
    tally[elem] = 1
  end
end

require 'set'
def find_dup(arr)
  value_set = Set.new
  arr.each do |elem|
    return elem if value_set.include? elem
    value_set.add(elem)
  end
end

def find_dup(arr)
  arr.tally.key(2)
end

def find_dup(arr)
  arr.find { |elem| arr.count(elem) == 2 }
end

def find_dup(arr)
  arr.detect { |elem| arr.count(elem) == 2 }
end

p find_dup([1, 5, 3, 1])# == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58])# == 73