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


D: Data Structure


A: Algorithm
- Create 3 variables to store num of lower, upper, neither chars.
- Divide each by string length and multiply by 100. Round to 1 decimal.
  - May need to convert to float first.
- Create hash and store info.

C: Code
=end

def letter_percentages(str)
  [:lowercase, :uppercase, :neither].zip(
    [str.count('a-z'), str.count('A-Z'), str.count('^a-zA-Z')].map do |count|
      (count.to_f / str.length * 100).round(1)
    end
  ).to_h
end

p letter_percentages('abCdef 123')# == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef')# == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123')# == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')# == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }