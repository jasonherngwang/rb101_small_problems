=begin
P: Understand the Problem
Problem Statement
Create two methods. Given a string representing the time (24-hr format):
- Method 1 returns the number of minutes after midnight (an integer)
- Method 2 returns the number of minutes before midnight (an integer)

Inputs:
- 1 string
Outputs:
- 1 integer

Explicit Requirements
- Inputs range from '00:00' to '24:00'.
- Disregard Daylight Savings and Time Zones.

Implicit Requirements
- Input will not be blank.
- 24 hours in a day, 60 minutes in an hour.
- Output string will be less than 1440.
- Midnight is "00:00" or "24:00".

Clarifying Questions


Problem Domain, Domain-Specific Terms
- Daylight Savings

Mental Model
Convert the time into a single integer representing the minutes elapsed.
- If invoking after_midnight, return this integer.
- If invoking before_midnight, subtract this integer from 1440 and return it.

E: Examples or Test Cases

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Example:
Input: "12:34"

after_midnight
Output: 654
12 * 60 + 34 = 754

before_midnight
Output: 686
12 * 60 + 34 = 754
1440 - 754 = 686

D: Data Structure
Strings and integers.

A: Algorithm
- Create constant variables to store these:
  - minutes per hour = 60
  - hours per day = 24
  - minutes per day = minutes per hour * hours per day = 1440
- Extract the hours from before the colon and convert to an integer.
- Extract the minutes from before the colon and convert to an integer.
- Sum hours * 60 + minutes.
- If after_midnight was invoked, return the sum.
- If before_midnight was invoked, return 1440 - sum.

C: Code
=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time_str)
  hours = time_str[0, 2].to_i
  minutes = time_str[-2, 2].to_i
  # Modulus for edge case '24:00'
  (hours * 60 + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  # Accommodate for delta_minutes == 1440 if time_str == '00:00'
  return 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

def calc_offset(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i
  offset = hours * 60 + minutes
  offset % 1440
end

def before_midnight(time)
  offset = calc_offset(time)
  return 0 if offset == 0 || offset == 1440
  1440 - offset
end

# p after_midnight('00:00')# == 0
# p before_midnight('00:00')# == 0
# p after_midnight('12:34')# == 754
# p before_midnight('12:34')# == 686
# p after_midnight('24:00')# == 0
# p before_midnight('24:00')# == 0

# Using Date and Time classes
require 'time'
def after_midnight2(time_str)
  return 0 if time_str == '00:00' || time_str == '24:00'
  (Time.strptime(time_str, '%H:%M') - Time.strptime('00:00', '%H:%M')) / 60
end
def before_midnight2(time_str)
  return 0 if time_str == '00:00' || time_str == '24:00'
  1440 - (Time.strptime(time_str, '%H:%M') - Time.strptime('00:00', '%H:%M')) / 60
end

p after_midnight2('00:00')# == 0
p before_midnight2('00:00')# == 0
p after_midnight2('12:34')# == 754
p before_midnight2('12:34')# == 686
p after_midnight2('24:00')# == 0
p before_midnight2('24:00')# == 0