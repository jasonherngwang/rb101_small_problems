=begin
P: Understand the Problem
Problem Statement
Write a method that takes a nested array where each subarray contains the name
of a fruit and a quantity. Convert this into an array which has each fruit
repeated by its quantity.

Inputs:
- Nested array
Outputs:
- 1-D array
Explicit Requirements
- Each fruit string must appear as many times as its quantity.
- Fruits must appear in the order they appear in the input array.
Implicit Requirements
- Quantities are integers.
- May need to account for empty input array.
- Fruit names and quantities should not be missing or nil.
Clarifying Questions
- Return new object or mutate existing one?
- New array
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate over the input array. Multiply the fruit string by the quantity.
Flatten the array.

E: Examples, Test Cases, Edge Cases
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


D: Data Structure


A: Algorithm
Iterate over the input array. Multiply the fruit string by the quantity.
Flatten the array.

C: Code
=end

def buy_fruit(array)
  array.map do |fruit, quantity|
    [fruit] * quantity
  end.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])