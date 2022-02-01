=begin
The Array#delete method is mutating the caller. As the Array#each
method is iterating over the array elements, the Array#delete is 
deleting elements. When the each method's index exceed the array
length, the iteration will stop.

The word 'boring' was skipped because when the index was at
position 2, the index was already shortened during the deletion
of 'dull'.


=end
def neutralize(sentence)
  words = sentence.split(' ')
  words = words.reject! do |word|
    negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.