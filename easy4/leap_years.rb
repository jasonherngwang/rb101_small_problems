=begin
P
Inputs: Year, as an integer
Outputs: Boolean, true if it is a leap year

Requirements:
- Input will be an Integer greater than 0.
- Leap year: Divisible by 400, or divisible by 4 but not divisible by 100.

Questions:


E
See problem statement.

D
Integers, booleans

A
Set up conditional expressions.
- If divisible by 400, return true.
- If divisible by by 4 and not by 100, return true.
- Else return false.

=end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0) && (year % 100 != 0)
end

def leap_year2?(year)
  if year % 4 == 0
    if year % 100 == 0
      year % 400 == 0
    else
      true
    end
  else
    false
  end
end

# p leap_year2?(2016) == true
# p leap_year2?(2015) == false
# p leap_year2?(2100) == false
# p leap_year2?(2400) == true
# p leap_year2?(240000) == true
# p leap_year2?(240001) == false
# p leap_year2?(2000) == true
# p leap_year2?(1900) == false
# p leap_year2?(1752) == true
# p leap_year2?(1700) == false
# p leap_year2?(1) == false
# p leap_year2?(100) == false
# p leap_year2?(400) == true

def leap_year_1752?(year)
  if year % 4 == 0 && year < 1752
      true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year_1752?(2016) == true
p leap_year_1752?(2015) == false
p leap_year_1752?(2100) == false
p leap_year_1752?(2400) == true
p leap_year_1752?(240000) == true
p leap_year_1752?(240001) == false
p leap_year_1752?(2000) == true
p leap_year_1752?(1900) == false
p leap_year_1752?(1752) == true
p leap_year_1752?(1700) == true
p leap_year_1752?(1) == false
p leap_year_1752?(100) == true
p leap_year_1752?(400) == true