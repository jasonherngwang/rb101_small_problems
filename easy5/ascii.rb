=begin
Return ASCII string value (sum of all ASCII value of the characters) of a string.

P
Inputs: 1 string
Outputs: 1 integer
Requirements:
- Use String#ord
Questions:

E

D

A
- Split string into character array.
- Iterate across the array, returning an array of ASCII values.
- Sum the array
=end

def ascii_value(str)
  # str.chars.map { |char| char.ord }
  #   .sum
  str.bytes.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0