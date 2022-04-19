=begin
P: Understand the Problem
Problem Statement
Write a method that takes a string and returns a hash indicating what
percentages of the characters are lowercase, uppercase, and neither.
Inputs:
- 1 string with 1+ chars.
Outputs:
- Hash
Explicit Requirements
- Percentages are rounded to 1 decimal place.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples, Test Cases, Edge Cases
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

Case: 
Inputs: 'AbCd +Ef'
Outputs: { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
lowercase: 'b", 'd', 'f' => total 3
uppercase: 'A', 'C', 'E' => total 3
neither: ' ', '+' => total 2
lowercase: 3 / 8 = 37.5%
uppercase: 3 / 8 = 37.5%
neither: 2 / 8 = 25.0%

D: Data Structure


A: Algorithm
- Create 3 variables to store num of lower, upper, neither chars.
- Divide each by string length and multiply by 100. Round to 1 decimal.
  - May need to convert to float first.
- Create hash and store info.

High-level: Find the input string length. Count occurrences of each of the 3 types and divide by the total length. Format as decimals with one place after the decimal.


Pseudo-code:
- Find occurrences of lowercase, uppercase, and neither type.
  - Lowercase: str.count 'a-z', str.scan(/[a-z]/).count
  - Uppercase: str.count 'A-Z', str.scan(/[A-Z]/).count
  - Neither: str.count '^a-zA-Z', str.scan(/[^a-zA-Z]/).count
- Divide each count by input string length, and multiple by 100 to get percentage.
- Create hash and insert the percentages.
  - Use helper method to calculate and format percentage value.
  - Number format: int.to_f.round(0)

Helper Methods: Use count and total to determine percentage, and format to 1 decimal.

C: Code
=end

# def letter_percentages(str)
#   [:lowercase, :uppercase, :neither].zip(
#     [str.count('a-z'), str.count('A-Z'), str.count('^a-zA-Z')].map do |count|
#       (count.to_f / str.length * 100).round(1)
#     end
#   ).to_h
# end

def decimal_to_pct(count, total)
  count.fdiv(total) * 100
    .round(1)
end

def letter_percentages(str)
  # lower_ct = str.count('a-z')
  lower_ct = str.scan(/[a-z]/).size
  # upper_ct = str.count('A-Z')
  upper_ct = str.scan(/[A-Z]/).size
  # neither_ct = str.count('^a-zA-Z')
  neither_ct = str.scan(/[^a-zA-Z]/).size
  {
    lowercase: decimal_to_pct(lower_ct, str.size),
    uppercase: decimal_to_pct(upper_ct, str.size),
    neither: decimal_to_pct(neither_ct, str.size),
  }
end

p letter_percentages('abCdef 123')# == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123')# == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')# == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }