=begin
P: Understand the Problem
Problem Statement
Write a method. Take a string. Return a new string where every other char is
capitalized.
Inputs:
- 1 string
Outputs:
- 1 string
Explicit Requirements
- Non-characters counts as characters when switching cases.
Implicit Requirements
- First character is always capitalized.
Clarifying Questions
- Return new object or mutate existing one?
  - New string
Problem Domain, Domain-Specific Terms
- 

Mental Model
Iterate through the character. Use a counter or a toggle. If odd, upcase the 
character. If even, downcase the character.

E: Examples, Test Cases, Edge Cases
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


D: Data Structure
Split string to chars. Transform elements. Join back to a string.

A: Algorithm
Use either an array-of-chars approach, or iterate-thru-chars.
- Split string to chars.
- Iterate through array, bringing the index.
  - If index is even, upcase.
  - If index is odd, downcase.

C: Code
=end

def staggered_case(str, first_char_capital: true)
  str.chars.map do |char|
    transformed_char = first_char_capital ? char.upcase : char.downcase
    first_char_capital = !first_char_capital
    transformed_char
  end.join
end

p staggered_case('I Love Launch School!', first_char_capital: true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', first_char_capital: true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', first_char_capital: true) == 'IgNoRe 77 ThE 444 NuMbErS'

=begin
Part 2: Ignore non-alpha chars when toggling case.

Algorithm
- Can no longer use map.
- Create an empty result string.
- Set up a loop to iterate over each character of the input string.
  - If string is in A-Za-z, add to result and invert the toggle boolean.
  - If not, add to result.
- Return result string.

=end

def staggered_case(str, first_char_capital: true, count_nonalpha_chars: false)
  need_uppercase = first_char_capital
  result = ''

  str.each_char do |char|
    if char =~ /[a-z]/i || count_nonalpha_chars
      result << (need_uppercase ? char.upcase : char.downcase)
      need_uppercase = !need_uppercase
    else
      result << char
    end
  end
  result
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', count_nonalpha_chars: true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', count_nonalpha_chars: true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', count_nonalpha_chars: true) == 'IgNoRe 77 ThE 444 NuMbErS'
