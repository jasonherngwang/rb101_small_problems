=begin
The method spin_me takes a string and returns it with each word reversed.

Will the returned string be the same object as the one passed, or a different
object?

Response:
str is a reference to the string object.
Method String#split returns a new array.
The returned string will be a new object.

=end

def spin_me(str)
  puts str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world").object_id # "olleh dlrow"