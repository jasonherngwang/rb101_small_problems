=begin
`odd_count = 3` is performing assignment in a conditional. This expression
evaluates to 3, which is a truthy value and will evaluate to true in a
conditional. Therefore the first branch of the ternary operator will
always be executed.

To fix: odd_count == 3
- Ternary operator not needed since this will return true if satisfied,
  and false if not.

=end

def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  # odd_count = 3 ? true : false
  odd_count == 3
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false