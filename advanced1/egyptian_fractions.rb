=begin
P: Understand the Problem
Problem Statement
Rational Number: Can be represented by the division of 2 integers.
Unit Fraction: Rational number with numerator 1.
Egyptian Fraction: Sum of a series of distinct unit fractions (no two are the same)

Write 2 methods:
1. A method that takes a Rational and returns an array of the denominators that
are part of the Egyption Fraction representation of the number
2. A method that takes an Array of denominators and calculates the resulting
Rational Number.

Inputs:
- 
Outputs:
-
Explicit Requirements
- 
Implicit Requirements
- The input value can be greater than 1.
Clarifying Questions
- Return new object or mutate existing one?

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


A: Algorithm
Method 1: Given a Rational, return denominators of its Egyptian Fraction representation.
- Given an argument `rational_num`:
- Create a result array `denominators`
- Iterate through denominators, starting from 1 and incrementing by 1.
  - Break if rational_num == 0.
  - If 1/denominator is <= than the Rational
    - Subtract that value from the Rational
    - Add that value to the result array
    
- Return result array
- The unit fractions will be unique because the denominator is incremented during each
  iteration.

Method 2: Given denominators, return the Rational
Sum the values 1/denominator.

C: Code
=end

def egyptian(rational_num)
  denominators = []
  denominator = 1
  while rational_num > 0
    unit_fraction = Rational(1, denominator)
    # Use >= because it must be able to subtract its own value and reach 0.
    if rational_num >= unit_fraction
      rational_num -= unit_fraction
      denominators << denominator
    end
    denominator += 1
  end
  denominators
end

p egyptian(Rational(5, 1))
p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

def unegyptian(denominator_array)
  denominator_array.map { |num| Rational(1, num) }.sum
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)