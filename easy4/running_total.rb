=begin
P
Inputs: Array of integers
Outputs: Array of integers representing the running total within the array.

Requirements:
- Output array is same size as input.
- Must account for empty array and single-element array.
- Numbers will be integers.

Questions:

E

D

A
If input is empty, return empty array.

Create a variable to store the running total.
- Initialize to 0.
Create a result array to store the output.

Iterate through array
- Add each element to the running total
- Append the running total to the result array.

Return the result array.

=end

def running_total(arr)
  total = 0
  result = []

  arr.each do |elem|
    total += elem
    result << total
  end

  result
end

def running_total(arr)
  sum = 0
  # Reassign sum and use the expression result as the block return value.
  arr.map { |elem| sum += elem }
end

def running_total(arr)
  result = []
  arr.inject(0) do |sum, elem|
    result << sum + elem
    sum + elem
  end
  result
end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |elem, result|
    sum += elem
    result << sum
  end
end

def running_total(arr)
  arr.map.with_index { |x, i| arr[0..i].sum }
end

p running_total([2, 5, 13])# == [2, 7, 20]
p running_total([14, 11, 7, 15, 20])# == [14, 25, 32, 47, 67]
p running_total([3])# == [3]
p running_total([])# == []