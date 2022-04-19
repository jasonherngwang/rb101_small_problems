=begin
P
Inputs: Integer, positive or zero
Outputs: String representation

Requirements:
- Cannot use to_s, String, format, etc.

Questions:

E

D

A
- Create result string.

While the quotient is not 0:
- Perform integer division by 10.
- Convert the remainder to a character (via hash) and concat to the front of the 
  result string
- Repeat with the quotient.

=end

DIGIT_CHARS = [*'0'..'9']

def integer_to_string(num)
  result = ''

  loop do
    num, remainder = num.divmod(10)
    result.prepend(DIGIT_CHARS[remainder])
    break if num == 0
  end
  
  result
end

p integer_to_string(4321) == '4321'
p integer_to_string(1) == '1'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'


def signed_integer_to_string(num)
  return '0' if num == 0

  if num < 0
    sign = '-'
    num *= -1
  else
    sign = '+'
  end
  sign + integer_to_string(num)
end

def signed_integer_to_string(num)
  sign = (
    case
    when num < 0 then '-'
    when num > 0 then '+'
    else              ''
    end
  )
  sign + integer_to_string(num.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'