def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true


def palindrome_arr?(arr)
  arr == arr.reverse
end

p palindrome_arr?([1, 2, 1]) == true
p palindrome_arr?([1, 2, '1']) == false
p palindrome_arr?([4, 5, 6, 5, 4]) == true


def real_palindrome?(str)
  # str_test = str.downcase.chars.select do |char|
  #   [*'0'..'9',*'a'..'z'].member? char
  # end
  str_test = str.downcase.delete('^a-z0-9')
  str_test == str_test.reverse
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false