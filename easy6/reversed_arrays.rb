=begin
P: Understand the Problem
Problem Statement
Reverse an array in-place, without using Array#reverse or Array#reverse!.
Inputs:
- 1 array
Outputs:
- The same array, reversed.
Explicit Requirements
- Cannot use the reverse method.
- The object_ids of the input and output must be the same.
Implicit Requirements
- A single-element or zero-element array does not change in value.
- Must accomodate strings and integers.
- Nested arrays will not be input.
Clarifying Questions
- Return new object or mutate existing one?
  - Mutate existing.
Problem Domain, Domain-Specific Terms
- 

Mental Model
Make a shallow copy of the array, and use indexed reassignment for mutation of
the original array.

E: Examples, Test Cases, Edge Cases
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true


D: Data Structure
2 arrays

A: Algorithm
- Make a shallow copy of the array.
- Iterate through either array, using indexed assignment to change each element
  of the original array to the corresponding element in the copy.
- Return the original array.

Pseudo-code:
- Return original array if length <= 1.
- Find halfway index.
  - For odd num of elements, find index that is left of center.
  - For even num of elements, find index that is the left of the center pair.
- Iterate from index 0 to the halfway index
  - Use multiple assignment to swap element at index and its mirror across the center (index = array.size - index - 1).
- Return original array.

C: Code
=end

# def reverse!(arr)
#   arr_copy = arr.dup
#   arr_copy.each_with_index do |elem, index|
#     arr[arr.length - 1 - index] = elem
#   end
#   arr
# end

# Using parallel assignment
def reverse!(arr)
  l_index = 0
  r_index = -1
  while l_index < arr.length / 2
    arr[l_index], arr[r_index] = arr[r_index], arr[l_index]
    l_index += 1
    r_index -= 1
  end
  arr
end
def reverse!(arr)
  return arr if arr.size <= 1
  
  mid_idx = arr.size / 2 - 1
  (0..mid_idx).each do |i|
    arr[i], arr[arr.size - i - 1] = arr[arr.size - i - 1], arr[i]
  end
  arr
end
# p list = [1,2,3,4]
# p result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# p list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# p list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# p list = []
# p reverse!(list) == [] # true
# p list == [] # true

def reverse(arr)
  arr_copy = arr.dup
  index = 0
  while index < arr_copy.length / 2
    arr_copy[index], arr_copy[-index-1] = arr_copy[-index-1], arr_copy[index]
    index += 1
  end
  arr_copy
end

def reverse(arr)
  result = []
  (arr.size - 1).downto(0).each do |i|
    result << arr[i]
  end
  result
end

# Using reverse_each
def reverse(arr)
  result = []
  arr.reverse_each { |elem| result << elem }
  result
end

# Using inject
def reverse(arr)
  arr.inject([]) { |result, elem| result.unshift(elem) }
end

# Using each_with_object
def reverse(arr)
  arr.each_with_object([]) { |elem, result| result.unshift(elem)  }
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true