=begin
P: Understand the Problem
Problem Statement
A "featured number" is:
- Odd
- Multiple of 7
- Digits occur exactly once each

Inputs:
- 1 integer
Outputs:
- The next featured number greater than the input number
Explicit Requirements
- 
Implicit Requirements
- Largest number is the one that uses all the digits once, in descending order
  9_876_543_210
Clarifying Questions
- Return new object or mutate existing one?
  - New integer
Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


D: Data Structure


A: Algorithm
Error message if number > 9_876_543_210

Using a helper method, set up conditionals to test:
- x.odd?
- x % 7 == 0

Advance upward from the given number. How to minimize the number of searches?
- Increment by 1
- Find next multiple of 7 (take modulus of 7 and add it)
  - Start advancing by 7 from there.


C: Code
=end

def is_featured_num?(num)
  num.digits == num.digits.uniq &&
  num <= 9_876_543_210 &&
  num.odd? &&
  num % 7 == 0
end

# p is_featured_num? 100
# p is_featured_num? 9_999_999_999
# p is_featured_num? 10
# p is_featured_num? 77
# p is_featured_num? 63

def featured(num)
  if num > 9_876_543_210
    puts "No possible featured numbers above #{num}."
    return
  end
  # Get to the next multiple of 7

  num += 7 - (num % 7)
  num += 7 if num.even?

  loop do
    return num if is_featured_num?(num)
    num += 14
  end
end

p featured(12)# == 21
p featured(20)# == 21
p featured(21)# == 35
p featured(997)# == 1029
p featured(1029)# == 1043
p featured(999_999)# == 1_023_547
p featured(999_999_987)# == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements