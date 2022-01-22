=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Write a method that counts the number of occurrences of each element in a given 
array. The words are case-sensitive.

Inputs:
- 1 array

Outputs:
- Print each element with its count, in the format 'car => 4'

Problem Domain, Domain-Specific Terms:
- 

Implicit Requirements:
- The array will not be empty.

Clarifying Questions:
- 

Mental Model:
Create a hash to store word and count. Iterate through the array. If the 
element exists in the hash, increment the count. If not, set count to 1. 
Once complete with the array, iterate through the hash and print the data in 
the specified format

Examples or Test Cases
----------------------
Case: Array with 10 string. Some similar words but not the same case.
Inputs: [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'Motorcycle', 'car', 'truck'
]
Outputs:
car => 4
truck => 3
SUV => 1
motorcycle => 1
Motorcycle => 1

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
Hash to store the counts.

Algorithm
---------


=end

# Iterating through array.
def count_occurrences(arr)
  counts = Hash.new
  
  arr.each do |e|
    if counts.key? e.to_sym
      counts[e.to_sym] += 1
    else
      counts[e.to_sym] = 1
    end
  end

  counts.each do |k, v|
    puts "#{k} => #{v}"
  end
end

# Using Array#uniq and Array#count
# def count_occurrences(arr)
#   counts = {}
  
#   arr.uniq.each { |e| counts[e.to_sym] = arr.count(e) }

#   counts.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end

# Using Array#uniq and Array#count, case-insensitive
# def count_occurrences(arr)
#   arr.map!(&:downcase)
  
#   counts = {}
#   arr.uniq.each { |e| counts[e.to_sym] = arr.count(e) }

#   counts.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end

# Using Array#to_h
# def count_occurrences(arr)
#   counts = arr.to_h { |e| [e.to_sym, arr.count(e)] }

#   counts.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end

# Using Array#tally
# def count_occurrences(arr)
#   arr.tally.each do |k, v|
#     puts "#{k} => #{v}"
#   end
# end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'Motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)