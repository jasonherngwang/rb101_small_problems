=begin
P: Understand the Problem
Problem Statement
Write a method that returns a list of all substrings of a string that are
palindromic.
Inputs:
- 
Outputs:
-
Explicit Requirements
- Return value should arranged in the same sequence as the substrings appear
  in the string.
- Duplicate palindromes should be included multiple times.
- Can use the substrings method written previously.
- Case matters.
- Single characters are not palindromes.
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?

Problem Domain, Domain-Specific Terms
- Palindrome: String is the same forwards and backwards.

Mental Model


E: Examples, Test Cases, Edge Cases
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


D: Data Structure


A: Algorithm
Use substrings function and filter to elements equal to their reverse and
have length greater than 1.

C: Code
=end

def leading_substrings(str)
  (0...str.length).map { |index| str[0..index] }
end

def substrings(str)
  (0...str.length).map { |index| leading_substrings(str[index..-1]) }.flatten
end

def palindromes(str)
  substrings(str).select { |s| s == s.reverse && s.size > 1 }
end

def palindromes(str)
  substrings(str.delete '^a-zA-Z0-9')
    .select { |s| s.downcase == s.downcase.reverse && s.length > 1 }
end

def palindromes(str)
  substrings(str.gsub(/[^a-z0-9]/i, ''))
    .select { |s| s == s.reverse && s.size > 1 }
end

p palindromes('abcd')# == []
p palindromes('madam')# == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye')# == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes')# == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]