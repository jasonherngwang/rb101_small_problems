=begin
words[i] references a string. When reassigning reversed_words, you cannot 
concatenate the reversed_words array to the end of a string.

`str + array` is syntactic sugar for 'str'.+(array) which results in a
type conversion error.

To fix:
1. Convert the string to a 1-element array.
reversed_words = [words[i]] + reversed_words

2. reversed_words.unshift(words[i])
=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    # reversed_words = words[i] + reversed_words
    
    # reversed_words = [words[i]] + reversed_words
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'