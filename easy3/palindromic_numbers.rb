def palindromic_number?(num)
  num = num.to_i.to_s
  num == num.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# Does not work; converts from base 8 to base 10.
p palindromic_number?(000500) == true