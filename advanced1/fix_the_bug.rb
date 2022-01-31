def my_method(array)
  if array.empty?
    []
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# Expected output:
# []
# [21]
# [9, 16]
# [25, 36, 49]

=begin
Fix the bug.

The elsif branch is supposed to trigger if the array length is > 1.
However, there is no conditional after elsif, so it looks to the next line
and tries to evaluate the Enumerator + block (a mapped array), which is a 
truthy value. Since there is nothing afterward, the elsif branch
evaluates to nil.

=end