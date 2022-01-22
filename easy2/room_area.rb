=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Inputs:
- 1 integer, for the room length
- 1 integer, for the room width 

Outputs:
- Print 1 float, the room area in square meters
- Print 1 float, the room area in square ft

Problem Domain, Domain-Specific Terms:
- Area = length * width

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Convert one or both of the input integers to a float. Multiply it by the 
other number. Convert this value from sqm to sqft by multiplying by
10.7639.

Examples or Test Cases
----------------------
Case:
Inputs: 10, 7
Outputs: 70.0 sqm, 753.47 sqft


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

SQM_TO_SQFT = 10.7639
SQM_TO_SQCM = 10_000
SQFT_TO_SQIN = 144


puts 'Room length (feet):'
length_ft = gets.to_f
puts 'Room width (ft):'
width_ft = gets.to_f

area_sqft = length_ft * width_ft
area_sqin = area_sqft * SQFT_TO_SQIN
area_sqm = area_sqft / SQM_TO_SQFT
area_sqcm = area_sqm * SQM_TO_SQCM

puts "The area of the room is:"
puts "#{format('%.2f', area_sqft)} square feet"
puts "#{format('%.2f', area_sqin)} square inches"
puts "#{format('%.2f', area_sqm)} square meters"
puts "#{format('%.2f', area_sqcm)} square centimeters"


