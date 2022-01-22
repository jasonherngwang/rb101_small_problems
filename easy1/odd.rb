=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one integer argument, which may be positive, 
negative, or zero. This method returns true if the number's absolute value is 
odd. You may assume that the argument is a valid integer value.

Inputs:
- 1 integer

Outputs:
- 1 boolean: true or false

Problem Domain, Domain-Specific Terms:
- Absolute value is the magnitude. The absolute value of a:
  - Positive number: Itself
  - Zero: Zero
  - Negative number: Itself * -1
- When using modulus or remainder by 2:
  - Modulus returns a non-negative number if the value is negative.
  - Remainder returns a negative number if the value is negative.

Implicit Requirements:
- Inputs are valid integers. No need for input validation

Clarifying Questions:
- 

Mental Model:
Write an algo that calculates the absolute value of the input. Write an algo
that determines if a positive number is odd. Return the boolean output of the
second algo.

Examples or Test Cases
----------------------
Case: Positive even number
Inputs: 2
Outputs: false

Case: Positive odd number
Inputs: 1
Outputs: true

Case: Zero
Inputs: 0
Outputs: false

Case: Negative even number
Inputs: -1
Outputs: true

Case: Negative odd number
Inputs: -2
Outputs: false


Edge Cases
----------
- 0, nil, "", [], {}, special chars
- Boundary conditions
- Repetition / duplication
- Upper and lower case
- 0, 1, and multiple items in a collection
- Data types
- Exceptions

Case: 
Inputs: 
Outputs:

Data Structure
--------------


Algorithm
---------
Calculate absolute value by using #abs or by:
- If the value < 0, multiply by -1. Otherwise do not change the value.
- This step technically not necessary.
Determine oddness by checking if the value mod 2 is not equal to zero.

=end

# Using modulus
def is_odd?(x)
  x % 2 != 0
end

puts is_odd?(2)
puts is_odd?(1)
puts is_odd?(0)
puts is_odd?(-1)
puts is_odd?(-2)

# Using remainder
def is_odd?(x)
  x = x < 0 ? -x : x
  x.remainder(2) != 0
end

puts is_odd?(2)
puts is_odd?(1)
puts is_odd?(0)
puts is_odd?(-1)
puts is_odd?(-2)