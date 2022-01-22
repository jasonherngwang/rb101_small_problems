=begin

PEDAC

Understand the Problem
----------------------
Problem Statement:
Create a simple tip calculator. The program should prompt for a bill amount and 
a tip rate. The program must compute the tip and then display both the tip and 
the total amount of the bill.

Inputs:
- The bill amount: 1 float
- The tip rate as a percentage: 1 float

Outputs:
Print:
- The tip amount: 1 float
- The total bill: 1 float

Problem Domain, Domain-Specific Terms:
- Tip is bill amount * tip rate/100.
- Total is bill + tip.

Implicit Requirements:
- 

Clarifying Questions:
- 

Mental Model:
Multiply bill by tip rate/100 to determine tip. Add tip to bill.

Examples or Test Cases
----------------------
Case:
Inputs:
Outputs:


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

puts "What is the bill?"
bill_amount = gets.to_f
puts "What is the tip percentage?"
tip_rate = gets.to_f

tip_amount = bill_amount * (tip_rate / 100)
total = bill_amount + tip_amount

puts "The tip is $#{format('%.2f', tip_amount)}"
puts "The total is $#{format('%.2f', total)}"