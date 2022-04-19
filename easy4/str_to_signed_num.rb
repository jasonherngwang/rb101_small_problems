=begin
P
Inputs: String representing a number. May be preceded by + or - to indicate sign.
Outputs: Signed integer.

Requirements:
- Assume positive if + or - are not indicated.

Questions:

E

D

A

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

def string_to_signed_integer(str)
  multiplier = 1
  if ['+', '-'].include? str[0]
    sign = str[0]
    multiplier = -1 if sign == '-'
    str = str[1..-1]
  end
  multiplier * string_to_integer(str)
end

def string_to_signed_integer(str)
  first_char = str[0]
  if %w(+ -).include?(first_char)
    string_to_integer(str[1..-1]) * (first_char == "-" ? -1 : 1)
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100