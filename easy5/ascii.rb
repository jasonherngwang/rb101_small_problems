=begin
P
Write a method that returns the ASCII string value of a string, which is the sum of the ASCII values of every character.
Inputs: 1 string of 0 or more characters, including spaces and punctuation.
Outputs: 

Requirements:
- May use String#ord method to find the ASCII value of one character.
- Must account for ASCII values of non-letter characters.

Example:
Input: 'Four score'

F  70
o  111
u  117
r  114
   32
s  115
c  99
o  111
r  114
e  101
------
   984
   
A
- Split the string into characters.
- Invoke the String#ord method on each character to find the ASCII value.
- Sum the ASCII values. Return.

=end

def ascii_value(str)
  # str.chars.map { |char| char.ord }
  #   .sum
  # str.chars.reduce(0) { |sum, char| sum + char.ord }
  str.bytes.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0