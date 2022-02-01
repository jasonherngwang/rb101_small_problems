=begin
P: Understand the Problem
Problem Statement
Sort an array of values (numbers or strings) using merge sort.
Merge sort is a recursive algo that breaks down the elements into nested
sub-arrays, and merges them back together in sorted order.
Inputs:
- 1 1-D array, which can be unsorted.
Outputs:
- The input array, sorted.
Explicit Requirements
- Elements are either numbers or strings, but not both.
- Elements must be first split into 1-element arrays, then merged back together.
- Must use recursion.
Implicit Requirements
- Can use merge_sorted_lists from the previous exercise.
Clarifying Questions
- Return new object or mutate existing one?
  - Not specified.

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples, Test Cases, Edge Cases
Consider:
- 0, nil, "", [], {}, special chars, symbols
- Negative numbers
- Decimals instead of integers
- Boundary conditions
- Repetition / duplication
- Upper and lower case characters
- 0, 1, and multiple items in a collection
- Data types
- Exceptions
- Missing arguments

Case: 
Inputs: 
Outputs:


D: Data Structure
All arrays

A: Algorithm
Recursive method for splitting array into 1-element subarrays
- Create method breakdown_array(array)
- Return condition: When array has only 1 element left, return a 1-element
  array containing that single element.
- Calculate the halfway point: array length / 2 (integer division)
  - For an odd number of elements, this will not be an even split
- Return an array with 2 elements.
  - The first element is a recursive call of the method, passing in the
    front half of the array as an argument.
  - The second element is a recursive call of the method, passing in the
    second half of the array as an argument.

Recursive method for recombining a broken-down array.
- Create method recombine_array which takes a 2-element array.
- Call the elements `array1` and `array2`.
- Until both `array1` and `array2` are of length 1 (no subarrays inside).
  - Recursively call recombine_array on whichever element has length > 1
- If both are length 1, call merge_sorted_lists, passing the 2 elements in
  as arguments

C: Code
=end

def merge_sorted_arrays(array1, array2)
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

# Return a nested array of single-element subarrays.
def breakdown_array(array)
  return array if array.length == 1
  mid = array.length / 2
  [
    breakdown_array(array[0...mid]), 
    breakdown_array(array[mid..-1])
  ]
end

def recombine_array(array)
  return array if array.length == 1
  merge_sorted_arrays(recombine_array(array.first), recombine_array(array.last))
end

def merge_sort_v1(array)
  recombine_array(breakdown_array(array))
end

# p merge_sort_v1([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])# == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

=begin
Return single-element array since it cannot be broken down any further.
Use recursive calls to keep splitting arrays until they are all single elements.
Then start merging elements back together pair-by-pair.
=end

def merge_sort(array)
  return array if array.length == 1
  
  # Split into halves. For odd num of elems, middle can be in either array.
  array1 = array[0...array.length / 2]
  array2 = array[array.length / 2..-1]
  # p "Split into #{array1} and #{array2}"
  
  # Recursively call merge_sort on halves.
  array1_sorted = merge_sort(array1)
  array2_sorted = merge_sort(array2)
  
  # p "Recombined into #{merge_sorted_arrays(array1_sorted, array2_sorted)}"
  merge_sorted_arrays(array1_sorted, array2_sorted)
end

# p merge_sort([9, 5, 7, 1])# == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])# == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


=begin
Procedural Approach
- Transform each element into a single-element array.
- Create empty result array.
- Iterate over the input array,
  - Reassign the result array to the result of calling merge_sorted_arrays with the
    arguments as the result array and the next single-element array.
- Return the result array.

=end
def merge_sort_procedural(array)
  sorted_array = []
  index = 0
  while index < array.size
    sorted_array = merge_sorted_arrays(sorted_array, [array[index]])
    index += 1
  end
  sorted_array
end

# p merge_sort_procedural([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])

def merge_sort_v3(array)
  output = Array.new(array.size) {|i| [array[i]] }

  until output.size == 1
    output = output.each_slice(2).with_object([]) do |slice, result|
      result << (slice[1].nil? ? slice[0] : merge_sorted_arrays(slice[0], slice[1]))
      p result
    end
  end

  output[0]
end
p merge_sort_v3([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])