=begin
-String#chars returns a new array, so any destructive methods performed
  on this new array will not mutate the original input array.

To fix:
- name = name.chars.each {...}.join

=end

def shout_out_to(name)
  name.upcase!
  # name = name.chars.each { |c| c.upcase! }.join
  # name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'