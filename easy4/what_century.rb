=begin
P
Input: A year, as an integer
Output: The century, as a string

Requirements
- The century string must end in 'st', 'nd', 'rd', or 'th'.
- Century is defined as "rounding up" to the next hundred years
  - After rounding up, perform integer division and take the quotient.
  - Divident / Divisor = Quotient + Remainder

Questions:
- What year does a century start in? 2000 or 2001?
  - The year ending in 01.
- Can input be negative or 0?
  - Yes, but none of the examples show this, so we don't need to handle B.C.

E
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

D
Integer input.
Perform math on integer.
Convert to string.
To determine suffix ('st', 'nd', etc.), use a lookup table.
- Hash is fast O(1), or a helper function with if/else or case/when expressions.

A
Calculate the century
- Use integer division to divide the year by 100, returning the quotient and 
  the remainder.
  - If there is no remainder, the quotient is the number of the century.
  - If there is a remainder, add 1 to the quotient. This is the century.
Format the output string
- Create a lookup table using a hash (this can be at the top of the program)
  - Keys are the integers; values are the suffix strings.
- Alternatively, since only 1-3 have a different suffix, use a helper method
  with a case/when expression.
- Lookup the suffix using the last digit of the century year.
- Convert the century integer to a string, and concatenate with the suffix.
- Return this new string.

C

=end

def number_suffix(num)
  if [11, 12, 13].member? num % 100
    return 'th'
  end

  last_digit = num % 10
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else        'th'
  end
end

def century(year)
  century, remainder = year.divmod(100)
  if remainder > 0
    century += 1
  end
  century.to_s + number_suffix(century)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'