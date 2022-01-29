=begin
P: Understand the Problem
Problem Statement
You have a bank of `n` on/off switches, initialized to off.
You perform n repetitions of:
1. Toggle all
2. Toggle 2, 4, 6
3. Toggle 3, 6, 9
...and so forth.

Write a method that takes one argument (total number of switches) and returns
an Array which identifies which switches are on after n repetitions.

Inputs:
- 1 number `n`, the total number of switches
Outputs:
- An Array of length `n`, indicating which switches are on.
Explicit Requirements
- 
Implicit Requirements
- The returned array has length of n or less.
- The returned array should not return booleans. Rather, it contains integers.
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples, Test Cases, Edge Cases
Case: n = 5
Inputs: n = 5 
Outputs: [1, 4]

Case: n = 10
Inputs: n = 10 
Outputs: [1, 4, 9]


D: Data Structure


A: Algorithm
- Create an array of `n` booleans, initialized to false.
- Perform n iterations, keeping track of n as it iterates from 1 to n.
  - The result is an array of length `n`, filled with booleans indicating
    switch status
      - true = ON
      - false = OFF
- Iterate through boolean array, keeping track of the index of each element.
  - If the boolean is true, add its index + 1 to a new array.
  - Return the new array.

Element-wise Approach
- Create result array
- Given switch_num 1 to n:
  - Initialize boolean to false
  - Iterate pass_num = 2 to n.
    - Calculate switch_num % pass_num == 0
      - If true, invert the boolean
      - If false, do nothing
  - If final boolean is true, append switch_num to result array.

C: Code
=end

def lights(n)
  switches = [false] * n
  (1..n).each do |x|
    switches.map!.with_index do |elem, index|
      (index + 1) % x == 0 ? !elem : elem
    end
  end
  switches.map.with_index do |elem, index|
    elem ? index + 1 : elem
  end - [false]
end

# p lights(5)
# p lights(10)
# p lights(1000)

def switch(n_times)
  n_times == 0 ? true : switch(n_times - 1) && true
end

def lights(n)
  result = []
  (1..n).each do |switch_num|
    switch_state = false
    (1..n).each do |pass_num|
      switch_state = !switch_state if switch_num % pass_num == 0
    end
    result << switch_num if switch_state
  end
  result
end

p lights(5)
p lights(10)
p lights(1000)