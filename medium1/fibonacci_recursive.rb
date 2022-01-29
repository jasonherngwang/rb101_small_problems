=begin
P: Understand the Problem
Problem Statement
Write a recursive method that returns the nth Fibonacci number.
The Fibonacci sequence starts with 1, 1. Each successive number is the sum
of the previous 2.

1, 1, 2, 3, 5, 8, 13, 21
F(n) = F(n-1) + F(n-2)

Inputs:
- 1 number, `n`
Outputs:
- The nth Fibonacci number
Explicit Requirements
- 
Implicit Requirements
- Input and output are integers.
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
Recursion should stop at n = 1.
- If n == 1, return 1.
- If n == 2, return 1.
- If n == 3 or greater,
  - Return F(n - 1) + F(n - 2)

C: Code
=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765