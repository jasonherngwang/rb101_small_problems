=begin
P
Input: 2 strings
Output: 1 string

Requirements
- Find shorter string.
- Concatenate short-long-short.
- Return concatenated result.

Questions
- Possible to have empty string input? Yes, shown in example 3.
- Possible to have identical strings? No. They must be different lengths.

E
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

D
Strings in and string out.

A
Accept 2 strings as arguments.
Compare the lengths of the 2 input strings.
- If str1 is shorter:
  - Concatenate str1, str2, str1 and return this string.
- Else if str2 is shorter:
  - Concatenate str2, str1, str2 and return this string.

C
=end

def short_long_short(str1, str2)
  str1.length < str2.length ? 
    str1 + str2 + str1 : 
    str2 + str1 + str2
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"