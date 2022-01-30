=begin
P: Understand the Problem
Problem Statement
Bubble Sort algo: Make multiple passes through the array. On each pass, swap
each pair of consecutive elements if the first is greater than the second.
Repeat until a pass is made without any swapping occurring.
Inputs:
- 1 array of numbers, with at least 2 elements.
Outputs:
- The same array, sorted in-place using Bubble Sort.
Explicit Requirements
- The original Array must be returned.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - Mutate existing array.
Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)


D: Data Structure
Array

A: Algorithm
- Start loop
  - Create boolean `swap_occurred` and initialize to false.
  - Iterate through the array, from index 0 to (array length - 2).
    - Check if current element > next element
      - If so, swap. Can use parallel assignment.
        - Set `swap_occurred` to true
      - if not, continue.
  - If `swap_occurred` remained false, break out of loop.
  - Else, continue looping.
- Return array.


C: Code
=end

def bubble_sort!(array)
  n = array.length
  loop do
    swap_occurred = false
    (1..n - 1).each do |index|
      next if array[index] > array[index - 1]
      array[index], array[index - 1] = array[index - 1], array[index]
      swap_occurred = true
      # All elements after last swap are sorted; don't examine on next pass.
      n = index
    end
    break unless swap_occurred
  end
  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)