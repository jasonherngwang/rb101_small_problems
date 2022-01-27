=begin
P: Understand the Problem
Problem Statement
Write a method include? that take an Array and a search value. It returns true
if the value is in the array, false if not.

Inputs:
- 1 array, 1 object
Outputs:
- 1 boolean
Explicit Requirements
- Cannot use Array#include.
Implicit Requirements
- Must accommodate empty array, array with nil.
- Must accommodate nil as a valid search value. Return true if nil in array.
Clarifying Questions
- Return new object or mutate existing one?
  - Return new boolean
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate through array, comparing element to search value. Return true if match,
otherwise false.

E: Examples, Test Cases, Edge Cases
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false


D: Data Structure


A: Algorithm
- Iterate through array.
  - If current element equals search value, break loop and return true
  - If not, continue to next iteration.
- Return false if no matches found.

C: Code
=end

# Using each for iteration
def include?(arr, search_value)
  arr.each do |elem|
    return true if elem == search_value
  end
  false
end

# Using find_index
def include?(arr, search_value)
  !!arr.find_index(search_value)
end

  # Using find or detect - DOES NOT WORK WITH NIL
# def include?(arr, search_value)
#   arr.find { |elem| elem == search_value }
# end

# Using any?
def include?(arr, search_value)
  arr.any? search_value
end

# Using count
def include?(arr, search_value)
  arr.count(search_value) > 0
end

# Using select or filter
def include?(arr, search_value)
  arr.select { |elem| elem == search_value }.length > 0
end

p include?([1,2,3,4,5], 3)# == true
p include?([1,2,3,4,5], 6)# == false
p include?([], 3)# == false
p include?([nil], nil)# == true
p include?([], nil)# == false