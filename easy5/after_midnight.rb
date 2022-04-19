=begin
P: Understand the Problem
Problem Statement
Convert an integer into a time (24-hr format). The integer represents the 
minutes before (negative value) or after (positive value) midnight.

Inputs:
- 1 integer
Outputs:
- 1 string representing the time of day in hh:mm format

Explicit Requirements
- Negative integer indicates before midnight, positive integer is after.
- Disrgard Daylight Savings and Time Zones.

Implicit Requirements
- 0 is a valid input.
- Input will not be blank.
- Input will not be a float.
- 24 hours in a day, 60 minutes in an hour.
- Output string is formatted with a colon.
- Midnight is "00:00".

Clarifying Questions
- Is there a maximum or minimum input value? Can the time period span multiple
  days?
  - Yes, the example with 3000 minutes spans over 2 days.

Problem Domain, Domain-Specific Terms
- Daylight Savings

Mental Model
Calculate how many minutes are in a day. Repeatedly subtract the input by this 
amount until it is less than one day. Convert minutes to hours and minutes. 
Format the value into the specified string format.

E: Examples or Test Cases

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Edge Cases
----------
- 0, nil, "", [], {}, special chars
- Boundary conditions
- Repetition / duplication
- Upper and lower case
- 0, 1, and multiple items in a collection
- Data types
- Exceptions

Case: 
Inputs: 
Outputs:


D: Data Structure
Integers and strings

A: Algorithm
- Create a method: time_of_day(min_from_midnight).
- Determine whether min_from_midnight is positive or negative. 
  - Create a variable named before_midnight, storing Boolean true if minutes if 
    negative, false otherwise.
  - If negative, convert min_from_midnight to a positive value.
- Calculate the minutes in a day: 24 * 60 = 1440. Store in variable min_per_day.
- If min_from_midnight is greater than min_per_day:
  - Find the remainder of dividing (integer divison) min_from_midnight by 
    min_per_day, and store it in min_from_midnight.
- Find the quotient and remainder of dividing min_from_midnight by 60.
  - The quotient is the hour of the day. Create variable `hour` to store this.
  - The remainder is the minutes. Create variable `min` to store this.
- If the variable before_midnight is true:
  - Reassign hour to: 23 - hour.
  - Reassign min to: 60 - min.
- Format the hour and min into the "hh:mm" format

Official Solution Approach
- Create constant variables to store these:
  - minutes per hour = 60
  - hours per day = 24
  - minutes per day = minutes per hour * hours per day = 1440
- Create method time_of_day(delta_minutes).
- If delta_minutes > 0:
  - If delta_minutes > 1440:
    - Take the remainder of delta_minutes / 1440 (integer division).
      The result will be < 1440.
    - Find the quotient and remainder of the result / 60 (integer division).
      The quotient will be the hours (out of 24).
      The remainder will be the minutes (out of 60).
    - Convert hours and minutes to time format, padding with zeroes.
- If delta_minutes < 0:
  - Repeatedly add 1440 until the value is positive. The result will be < 1440.
  - Execute the above program starting from the quotient/remainder step.

C: Code
=end

# def time_of_day(min_from_midnight)
#   before_midnight = false
#   if min_from_midnight < 0
#     before_midnight = true
#     min_from_midnight *= -1
#   end

#   min_per_day = 24 * 60
#   if min_from_midnight > min_per_day
#     min_from_midnight = min_from_midnight % min_per_day
#   end
#   hour, min = min_from_midnight.divmod(60)
  
#   if before_midnight
#     hour = 23 - hour
#     min = 60 - min
#   end

#   "#{format("%02d", hour)}:#{format("%02d", min)}"
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_minutes)
  # while delta_minutes < 0
  #   delta_minutes += MINUTES_PER_DAY
  # end
  delta_minutes = delta_minutes % MINUTES_PER_DAY

  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format("%02d:%02d", hours, minutes)
end

# p time_of_day(0)== "00:00"
# p time_of_day(-3)== "23:57"
# p time_of_day(35)== "00:35"
# p time_of_day(-1437)== "00:03"
# p time_of_day(3000)== "02:00"
# p time_of_day(800)== "13:20"
# p time_of_day(-4231)== "01:29"
# p time_of_day(1440)== "00:00"
# p time_of_day(-1440)== "00:00"

require 'date'
def time_of_day2(delta_minutes)
  # Time.at(delta_minutes * 60, in: 'UTC').strftime("%H:%M")
  # (Time.gm(2022, 1, 23, 0, 0, 0) + 60 * delta_minutes).strftime("%A %H:%M")
  (Date.parse("Sunday") + Rational(delta_minutes, 1440)).strftime("%A %H:%M")
end

p time_of_day2(0)
p time_of_day2(-3)
p time_of_day2(35)
p time_of_day2(-1437)
p time_of_day2(3000)
p time_of_day2(800)
p time_of_day2(-4231)
p time_of_day2(1440)
p time_of_day2(-1440)

=begin
P
The time of day can be represented as the number of minutes before or after midnight.
If the number is positive, the time is after midnight.
If the number is negative, the time is before midnight.

Write a method that takes an integer representing the number of minutes before or after midnight, and returns the time of day in hh:mm format.

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Requirements:
- Do not use the Date and Time classes.
- Day starts at 00:00
- There are 1440 minutes in a day.
  - If the input exceeds 1440, it starts over from 0.
- 1000 minutes past midnight is the same as 440 minutes before midnight.
- 1441 minutes past midnight is the same as 1 minute past midnight.
- Output string format is zero-padded, 2 digits. Applies to both hours and minutes.

Example: 
Input: 3000
Output: "02:00"
3000 % 1440 == 120
Hours: 120 / 60 == 2, with remainder of 0.

Input: -4231
Output: "01:29"
-4231 + 1440 * 3 = 89
Hours: 89 / 60 == 1 hours, remainder 29 minutes
   
A
- If number is < 0, add 1440 until it is > 0.
- If number is > 1440, subtract 1440 until it is < 1440.
- Divide by 60 (integer division), and store the quotient and remainder in 2 variables: hours and minutes.
- Format the hours and minutes into hh:mm format.
- Return formatted string.

=end

def normalize_time(min)
  while min < 0
    min += 1440
  end
  while min > 1440
    min -= 1440
  end
  min
end

# p normalize_time(0)
# p normalize_time(-3)
# p normalize_time(35)
# p normalize_time(-1437)
# p normalize_time(3000) 
# p normalize_time(800)
# p normalize_time(-4231)

def time_of_day(min_after)
  min_after = normalize_time(min_after)
  hours, minutes = min_after.divmod(60)
  format("%02d:%02d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"