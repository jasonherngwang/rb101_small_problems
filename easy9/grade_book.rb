=begin
P: Understand the Problem
Problem Statement
Write a method that averages 3 scores and returns a letter grade.

Inputs:
- 3 numbers.
Outputs:
- 1-character string
Explicit Requirements
- Inputs are between 0 and 100, inclusive.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- 

Mental Model
Average scores. Pass it through a series of conditionals, return a character
if the conditional is satisfied.

E: Examples, Test Cases, Edge Cases
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"


D: Data Structure


A: Algorithm
- Find the average of the scores.
- Set up an if/elsif/else statement. Using the score bands, go from top to
  bottom. Once a conditional is met, return the corresponding grade.

C: Code
=end

def get_grade(score1, score2, score3)
  scores = [score1, score2, score3]
  avg = scores.sum(0.0) / scores.size
  return 'A+' if avg > 100
  return 'A' if avg >= 90
  return 'B' if avg >= 80
  return 'C' if avg >= 70
  return 'D' if avg >= 60
  'F'
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"