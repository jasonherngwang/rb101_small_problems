=begin
P
Given a year, return a string representing the century. The string should end in the appropriate suffix for that number: 'st, 'nd', 'rd, 'th'

Input: A year, as an integer
Output: The century, as a string

Requirements
- The century string must end in 'st', 'nd', 'rd', or 'th'.
- Century is defined as "rounding up" to the next hundred years
  - After rounding up, perform integer division and take the quotient.
  - Dividend / Divisor = Quotient + Remainder

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

Case: 
Inputs: 2000
Outputs: '20th'
Step-by-step
Is a multiple of 100 => 20th

Inputs: 2001
Outputs: '21st'
Step-by-step
Next multiple of 100 is 2100 => 21st

Inputs: 1965
Outputs: '20th'
Step-by-step
1965: Next multiple of 100 is 2000. => 20th

Inputs: 11201
Outputs: '113th'
Step-by-step
11201: Next multiple of 100 is 11300. => 113th

Edge case: input of 0
Outputs: 0th century.

Number ending => Word ending
1st
2nd
3rd
4-20th
21st
22nd
23rd
24th
...
29th
30th

Exception is 11-13 which end in th

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

Pseudo-code:
- If year is 0, return '0th century'.

- Find the next multiple of 100. This is the century number.
  - Check if the current number is already a multiple of 100.
    - If so, return num / 100.
    - Else, return num / 100 + 1
- Invoke helper method to find suffix.
- Append suffix to century number, and return

Helper Methods: Century suffix
- Takes 1 parameter, the century year (Integer).
- Find the appropriate word ending: 'st', 'nd', 'rd, or 'th.
  - Potential inputs: Any integer >= 1
  - Find the remainder after dividing by 100. This converts all numbers over 99 to a 2-digit number.
  - Check special cases:
    - 11, 12, 13. If one of these, return 'th'.
    - Last digit is:
      1: 'st'
      2: 'nd'
      3: 'rd' 
  - Else, return 'th'.

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