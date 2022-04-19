=begin
P: Understand the Problem
Problem Statement
Cute Angles
Write a method that takes a float representing an angle 0-360 deg and returns
a string representing the angle in deg (°), min ('), sec (").
A degree has 60 min. A min has 60 sec.

Inputs:
- 1 float
Outputs:
- 1 string in the format ""
Explicit Requirements
- Zero-pad to two numbers, for min and sec values.
- Minutes value can be up to 3 digits and does not need zero-padding.
- DEGREE = "\xC2\xB0"
Implicit Requirements
- 360° is the same as 0°
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New string
- Use escape characters to represent single and double quote?
  - Yes

Problem Domain, Domain-Specific Terms
- 1 deg = 60 min
- 1 min = 60 sec

Mental Model
Portion before decimal is degrees. Take the portion after the decimal and:
- Multiply by 3600 to convert to seconds.
- Perform integer division by 60 to find minutes, and again for degrees.

E: Examples, Test Cases, Edge Cases
Consider:
- 0, nil, "", [], {}, special chars
- Boundary conditions
- Repetition / duplication
- Upper and lower case
- 0, 1, and multiple items in a collection
- Data types
- Exceptions

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


D: Data Structure
Floats and integers

A: Algorithm
- Initialize the degrees, minutes, and seconds variables to Integers with 
  value 0.
- Multiply the input float by 3600 to convert it into seconds and ensure the
  result is a float.
- Use integer division to divide the input float by 3600.
  - Store the quotient integer as the degree value.
- Use integer division to divide the remainder by 60.
  - Store the quotient integer as the minutes value.
- Use integer division to divide the input float by 60.
  - Store the quotient integer as the seconds value.
- Assemble the three values into an output string, using string interpolation.
  - Use zero-padded string formatting (2 digits) for minutes and seconds.
  - Use the symbols, with escapes sequences if necessary.

C: Code
=end

DEGREE = "\xC2\xB0"
MIN_PER_DEG = 60
SEC_PER_MIN = 60
SEC_PER_DEG = MIN_PER_DEG * SEC_PER_MIN

def normalize(deg)
  if deg < 0
    deg += 360 until deg > 0
  elsif deg > 360
    deg -= 360 until deg < 360
  end
  deg
end

def dms(angle_deg)
  angle_deg = normalize(angle_deg)
  angle_sec = angle_deg * SEC_PER_DEG
  deg, remaining_sec = angle_sec.divmod(SEC_PER_DEG)
  min, sec = remaining_sec.divmod(SEC_PER_MIN)

  format(%(#{deg}#{DEGREE}%02d'%02d"), min, sec)
end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")


=begin
Second attempt

P: Understand the Problem
--------------------------------------------------------------------------------
Problem Statement
Write a method that takes a float representing an angle between 0-360 deg and returns a String representing that angle in degrees (°), minutes ('), and seconds (").
Degree = 60 minutes
Minute = 60 seconds.

DEGREE = "\xC2\xB0"

Inputs: 1 float between 0.0 and 360.0
- Data types always the same? Yes, a Floar
- Edge cases (emptiness, zero, negative, case-sensitivity, boundary conditions)
  - Input is bound between 0 and 360. No negatives.
  - Empty input? Do not consider
- Validate input? No

Outputs: 1 String
- Print or return? Return new object or mutate existing?
- Does element order matter?
- How to handle duplicates?

Explicit Requirements
- 360 degrees can be represented as 360 or 0 deg.
- 0 deg must be represented as 0 deg.

Implicit Requirements - Review problem and examples
- Minutes and seconds are 0-padded to 2 digits.
- Some rounding may be used.

Clarifying Questions
- Any domain-specific terms?


E: Examples, Test Cases, Edge Cases
--------------------------------------------------------------------------------
Case: 
Inputs: 76.73
Outputs: %(76°43'48")
Convert to seconds: 76.73 * 3600 = 276228. Round to 0 decimal places.
Integer division by 60 to find whole degrees: 76. Save the remainder: 2628.
Integer division by 60 to find whole minutes: 43. Remainder is seconds: 48.


D: Data Structure
--------------------------------------------------------------------------------
Input: Float
Intermediate: Floats, for math operations. 
Output: String


A: Algorithm
--------------------------------------------------------------------------------
Pseudo-code:
- Multiple angle by 3600 and round to 0 decimal places.
- Integer division by 60. Quotient is the degrees. Store remainder.
- Integer division by 60. Quotient is the minutes.
- Remainder is the seconds.
- Format to the specified format.


Helper method: Format the numbers into the specified format


C: Code
--------------------------------------------------------------------------------
=end

DEGREE = "\xC2\xB0"

def format_deg(deg, min, sec)
  format(%(%d#{DEGREE}%02d'%02d"), deg, min, sec)
end

# puts format_deg(12, 24, 45)

def normalize(angle)
  while angle < 0
    angle += 360
  end
  angle % 360
end

def dms(angle)
  angle = normalize(angle)
  total_sec = angle * 3600
  deg, remainder = total_sec.divmod(3600)
  min, sec = remainder.divmod(60)
  format_deg(deg, min, sec)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")