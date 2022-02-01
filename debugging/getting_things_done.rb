=begin
The move method includes a recursive call to itself, decrementing
n by 1 on each call. However, it does not specify a stopping point,
such as returning if from_array is nil. Therefore, n keeps being
decremented to smaller and smaller negative numbers, and the
Array#shift method keeps returning nil after from_array has been
emptied. The stack grows indefinitely.

To fix:
In the first line of the method definition, add:
return if n == 0

If n > from_array, add:
return if from_array.empty?
=end

require 'pry'

def move(n, from_array, to_array)
  # binding.pry
  return if n == 0 || from_array.empty?
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(10, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']