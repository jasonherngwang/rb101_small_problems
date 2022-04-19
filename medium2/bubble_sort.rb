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

Inputs: [6, 2, 7, 1, 4]
Outputs: [1, 2, 4, 6, 7]
Passes:
[2, 6, 7, 1, 4] swap
[2, 6, 7, 1, 4] no swap
[2, 6, 1, 7, 4] swap
[2, 6, 1, 4, 7] swap

[2, 6, 1, 4, 7] no swap
[2, 1, 6, 4, 7] swap
[2, 1, 4, 6, 7] swap
[2, 1, 4, 6, 7] no swap

[1, 2, 4, 6, 7] swap
[1, 2, 4, 6, 7] no swap
[1, 2, 4, 6, 7] no swap
[1, 2, 4, 6, 7] no swap

[1, 2, 4, 6, 7] no swap
[1, 2, 4, 6, 7] no swap
[1, 2, 4, 6, 7] no swap
[1, 2, 4, 6, 7] no swap => sorted

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

2nd attempt
Pseudo-code:
- Initialize boolean variable `swapped` to false
- Initialize idx_of_last_swap to second to last_element (index array.size - 2)
- Invoke the loop method
  - Iterate from index 0 to idx_of_last_swap.
  - If element at current index > element at index + 1
    - Swap elements using parallel assignment (mutating method).
    - Reassigne idx_of_last_swap to current index
    - Set swapped toggle to true.
  - Break out of the look if toggle is false (no swaps performed)

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

# Swap forward
def bubble_sort!(array)
  idx_of_last_swap = array.size - 2
  loop do
  swapped = false
    (0..idx_of_last_swap).each do |idx|
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        idx_of_last_swap = idx
        swapped = true
      end
    end
    break unless swapped
  end
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