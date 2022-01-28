=begin
P: Understand the Problem
Problem Statement
Write a method that takes a positive integer and returns the number with its
digits reversed.

Inputs:
- 1 integer
Outputs:
- 1 integer
Explicit Requirements
- Remove leading zeroes or the number will be converted to octal.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New integer object.
Problem Domain, Domain-Specific Terms
- 

Mental Model
Convert to string, reverse, string leading zeroes, convert to integer.

E: Examples, Test Cases, Edge Cases
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1


D: Data Structure


A: Algorithm
Convert to string, reverse, string leading zeroes, convert to integer.

C: Code
=end

def reversed_number(num)
  num_str = num.to_s.reverse
  num_str.delete_prefix!('0') while num_str[0] == '0'
  num_str.to_i
end

p reversed_number(12345)# == 54321
p reversed_number(12213)# == 31221
p reversed_number(456)# == 654
p reversed_number(12000)# == 21 # No leading zeros in return value!
p reversed_number(12003)# == 30021
p reversed_number(1)# == 1