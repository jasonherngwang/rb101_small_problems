=begin
P: Understand the Problem
Problem Statement
Write a method that takes 2 arguments: starting number and ending number.
Print all numbers between the 2 numbers, except if a number is divisible by 3,
print "Fizz", if a number is divisible by 5, print "Buzz", if divisible by
3 and 5, print "FizzBuzz".

Inputs:
- 2 numbers
Outputs:
- Print a string of the outputs, separated by ', '
Explicit Requirements
- 
Implicit Requirements
- Inputs are integers.
- Inclusive of start and end numbers.
Clarifying Questions
- Return new object or mutate existing one?
  - New array object.
Problem Domain, Domain-Specific Terms
- 

Mental Model
Using a range from start to end num, use conditionals to determine what to
print. Store results in an array, and join with ', '.

E: Examples, Test Cases, Edge Cases
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


D: Data Structure


A: Algorithm
- Create a range start to end.
- Iterate over the range, transforming each element.
  - If element divisible by 3
    - If element divisible by 5.
      - Return 'Fizz'
    - Else
      - Return 'FizzBuzz'
  - Elsif divisible by 5
    - Return 'Buzz'
- Return result array.

Data Structure, Algorithm
------------------------------------------
- Iterate from start_num to end_num
  - Initialize an empty result string.
    - If divisible by 3, append "Fizz" to the string.
    - If divisible by 5, append "Buzz" to the string.
  - If result string is not empty, print it.
  - If result string is empty, print the current number

C: Code
=end

def fizzbuzz(start_num, end_num)
  (start_num..end_num).map do |num|
    if num % 3 == 0
      if num % 5 == 0
        'FizzBuzz'
      else
        'Fizz'
      end
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end
    .join(', ')
end

def fizzbuzz(start_num, end_num)
  (start_num..end_num).map do |num|
    fb = 'Fizz' * (num % 3 == 0 ? 1 : 0) + 'Buzz' * (num % 5 == 0 ? 1 : 0)
    fb == '' ? num : fb
  end
    .join(', ')
end

def fizzbuzz(start_num, end_num)
  (start_num..end_num).map do |i|
    result = ''
    result << 'Fizz' if i % 3 == 0
    result << 'Buzz' if i % 5 == 0
    result.empty? ? i : result
  end.join(', ')
end

p fizzbuzz(1, 15)