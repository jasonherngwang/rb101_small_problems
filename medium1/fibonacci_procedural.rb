=begin
P: Understand the Problem
Problem Statement
Write a procedural method that returns the nth Fibonacci number.

Inputs:
- 1 number, n
Outputs:
- The nth Fibonacci number
Explicit Requirements
- 
Implicit Requirements
- 
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
- Initialize the variables num1 and num2 to 1.
- For a total of (n - 2) times.
- Use parallel assignment num1, num2 = num2, num1 + num2
- Return num2

C: Code
=end

def fibonacci(n)
  num1, num2 = [1, 1]
  (n-2).times do
    num1, num2 = num2, num1 + num2
  end
  num2
end

p fibonacci(1)# == 1
p fibonacci(2)# == 1
p fibonacci(3)# == 2
p fibonacci(4)# == 3
p fibonacci(5)# == 5
p fibonacci(6)# == 8
p fibonacci(7)# == 13
p fibonacci(8)# == 21
p fibonacci(9)# == 34
p fibonacci(10)# == 55
p fibonacci(12)# == 144
p fibonacci(20)# == 6765
p fibonacci(8000)