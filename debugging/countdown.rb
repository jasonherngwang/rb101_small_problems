=begin
The method decrease() is invoked, passing local variable counter as an argument.
Inside the method, the parameter counter is initially a local variable referencing 
the same object as the argument. However, this local variable is reassigned to a
new object, and does not mutate the object it initially pointed to. Therefore, 
nothing changes for the counter initialized outside the method definition.

To fix this:
- Inside the `times` block:
  - Change `decrease(counter)` to `counter = decrease(counter)`.

Optional:
- Inside the decrease method:
  - No need to reassign the local variable. Just return a new object.

Refactor:
- The block passed to `times` can have a parameter which starts from 0
  and is incremented on each new iteration. The last value is 9.
- Instead of using a counter, print the value 10 - x, where x is the parameter.
- No longer require the decrease method.
=end

require 'pry'

def decrease(counter)
  counter - 1
  # counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
  # decrease(counter)
  # binding.pry
end

puts 'LAUNCH!'

# Refactor
10.times do |x|
  puts 10 - x
end

puts 'LAUNCH!'