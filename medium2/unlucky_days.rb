=begin
P: Understand the Problem
Problem Statement
Return the number of Friday the 13ths in the specified year. The year will be 
greater than 1752.

Inputs:
- 1 integer representing the year
Outputs:
- 1 integer, the number of Friday the 13ths in that year.
Explicit Requirements
- 
Implicit Requirements
- Assume year runs Jan 1 through Dec 31 inclusive.
- Assume Feb 29 is a valid date in leap years.
Clarifying Questions
- Return new object or mutate existing one?
  - New integer
Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2


D: Data Structure


A: Algorithm
Approach 1
Use a date module:
- Iterate through all 365 or 366 days in that year, checking or filtering:
  - Weekday is Friday, AND
  - Day is 13

Approach 2
- Create 12 Date objects: 1/13, 2/13, and so forth. Check if each one is Friday.

C: Code
=end

require 'date'

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    count += 1 if (Date.new(year, month, 13).friday?)
  end
  count
end

p friday_13th(2015)# == 3
p friday_13th(1986)# == 1
p friday_13th(2019)# == 2

=begin
Determine which months in the specified year have 5 Fridays.
- Iterate over months 1-12.
- Determine the number of Fridays in each month.
  - 
- Return the names of the months with 5 Fridays.
=end

def five_fridays(year)
  Date.new(year).step(Date.new(year,-1,-1))
    .select(&:friday?)
    .group_by(&:month)
    .select { |_, fridays| fridays.length > 4 }
    .keys
end

p five_fridays(2020)