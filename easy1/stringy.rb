=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that takes one argument, a positive integer, and returns a 
string of alternating 1s and 0s, always starting with 1. The length of the 
string should match the given integer.

Inputs:
- 1 positive integer 

Outputs:
- 1 string of alternating 0s and 1s
  - Must start with 1
  - String length = integer

Problem Domain, Domain-Specific Terms:
- N/A

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Create empty string. Using given integer n, set up a loop to iterate n times.
In each iteration, append either character '0' or '1'.
- To decide whether to append 0 or 1:
  - Toggle a boolean on or off.
  - Track the index with the iteration, and use even/odd to decide.

  Multiply the string '10' by n/2 (integer division). Chop off 0 or add 1
  depending on the modulus.

Examples or Test Cases
----------------------
Case: 1
Inputs: 1
Outputs: '1'

Case: Odd number
Inputs: 5
Outputs: '10101'

Case: Even number
Inputs: 8
Outputs: '10101010'


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


=end

def stringy(n)
  str = '10' * (n / 2)
  str << '1' if n % 2 == 1
  str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def stringy(n, start = '1')
  str = (start == '1' ? '10' : '01') * (n / 2)
  str << start if n % 2 == 1
  str
end

puts stringy(6, start = '0') == '010101'
puts stringy(9, start = '0') == '010101010'
puts stringy(4, start = '0') == '0101'
puts stringy(7, start = '0') == '0101010'