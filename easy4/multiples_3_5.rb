=begin
P
Inputs: An integer greater than 1.
Outputs: Sum of multiples of 3 and 5, between 1 and the number.
Requirements:
- 1 is not included.
- The number itself is included.
Questions:
- If a number is divisible by both 3 and 5, do we count it twice?
  - No, the example only counts it once for 15.

E
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

D
Array to store multiples.

A
Create result array to store the multiples.
Iterate from 1 to the number. On each iteration:
- If the number can be divided by 3 or 5 without remainder, add to the array.
Sum the array elements.

=end

def multisum1(num)
  result = 0
  (1..num).each do |x|
    result << x if (x % 3 == 0) || (x % 5 == 0)
  end
  result += x
end

def multisum2(num)
  (1..num).reduce(0) do |total, x|
    if (x % 3 == 0) || (x % 5 == 0)
      total + x
    else
      total
    end
  end
end

# p multisum2(3) == 3
# p multisum2(5) == 8
# p multisum2(10) == 33
# p multisum2(1000) == 234168

def multisum(num)
  if num == 1
    0
  elsif (num % 3 == 0) || (num % 5 == 0)
    num + multisum(num - 1)
  else
    multisum(num - 1)
  end
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168