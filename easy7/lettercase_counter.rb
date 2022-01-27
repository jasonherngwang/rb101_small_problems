=begin
P: Understand the Problem
Problem Statement
Take 1 string and return a hash counting lowercase, uppercase, and characters
of neither case.
Inputs:
- 1 string
Outputs:
- 1 hash with 3 keys.
Explicit Requirements
- 
Implicit Requirements
- A-Za-z are counted as uppercase and lowercase.
- Numbers have no case.
- Must count spaces and special characters.
- Must handle blank string.
Clarifying Questions
- Return new object or mutate existing one?
  - New hash

Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate char-by-char, inserting into hash based on conditionals.

E: Examples, Test Cases, Edge Cases
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


D: Data Structure
Hash to store result
Array for iteration

A: Algorithm
Approach 1: Basic Iteration
- Initialize result hash with zeroes.
- Split string into char array.
- Iterate over the array.
  - If char in range 'A'..'Z' increment uppercase total in hash.
  - Elsif char in range 'a'..'z' increment lowercase total in hash.
  - Else increment `neither` total in hash.
- Return hash

Approach 2: Deleting Characters
- Store string length in a variable.
- Delete 'A'..'Z'.
- Store the difference in a hash.
- Delete 'a'..'z'.
- Store the difference in a hash.
- Store the length of the remaining string in a hash.

Approach 3: Partition
- Split string into char array.
- Partition twice, ending up with 3 arrays.
- Take length of each array and store in hash.

Approach 4: Count
- Return hash where values are count of A-Z, a-z, ^A-Za-z.

C: Code
=end

# Approach 1
# def letter_case_count(str)
#   result = { lowercase: 0, uppercase: 0, neither: 0 }
#   chars = str.chars
#   chars.each do |char|
#     if ('a'..'z').include? char
#       result[:lowercase] += 1
#     elsif ('A'..'Z').include? char
#       result[:uppercase] += 1
#     else
#       result[:neither] += 1
#     end
#   end
#   result
# end

# Approach 2
def letter_case_count(str)
  result = {}
  no_uppercase = str.delete 'A-Z'
  result[:uppercase] = str.length - no_uppercase.length
  neither_only = no_uppercase.delete 'a-z'
  result[:lowercase] = no_uppercase.length - neither_only.length
  result[:neither] = neither_only.length
  result
end


# Approach 4
# def letter_case_count(str)
#   {
#     :lowercase: str.count('a-z'),
#     :uppercase: str.count('A-Z'),
#     :neither: str.count('^A-Za-z'),
#   }
# end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }