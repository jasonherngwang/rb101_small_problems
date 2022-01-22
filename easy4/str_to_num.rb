=begin
P
Inputs: String representation of an Integer.
Outputs: Integer.

Requirements:
- Cannot use standard conversion methods in Ruby.
- All input characters will be valid.
- The string will not begin with + or -.

Questions:
- 

E

D

A
Approach 1
Create a lookup table (hash) to convert number characters to Integers.
Create a variable `multiplier`, initialized to 1.
Create a result variable, named sum, initialized to 0.
Iterate through the string, from back to front.
- Use the hash to find the corresponding integer.
- Multiply the integer by the multiplier variable, and add to sum.
- Multiply the multiplier variable by 10.
Return the sum.



=end


DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
}

def string_to_integer(str)

  digits = str.chars.map { |char| DIGITS[char] }
  sum = 0

  digits.each { |digit| sum = sum * 10 + digit}

  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570