def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

def raise_to_n(x, n)
  n == 0 ? 1 : multiply(raise_to_n(x, n-1), x)
end

p square(5) == 25
p square(-8) == 64

p raise_to_n(5, 3)
p raise_to_n(3, 7)
p raise_to_n(1, 0)
p raise_to_n(-1, 3)