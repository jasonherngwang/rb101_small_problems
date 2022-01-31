=begin
P: Understand the Problem
Problem Statement
Make a madlibs program that reads text from a file and plugs in randomized
nouns, verbs, adjectives, and adverbs, and prints it.
The formats of the input text and the plug-in words are not specified.

Inputs:
- File of text
Outputs:
- Print input text with words plugged in.
Explicit Requirements
- 
Implicit Requirements
- There is no hyphenation, e.g. plug-in words will not be split over to the 
  next line.
- You must create the input text with placeholders indicating which type of
  word should be plugged in.
- The plug-in text should have multiple words of each type.
  - Words are randomly selected with replacement, i.e. the same word can be
    used multiple times.
Clarifying Questions
- Return new object or mutate existing one?
  - Print text only.
Problem Domain, Domain-Specific Terms
- 

E: Examples, Test Cases, Edge Cases
Consider:
- 0, nil, "", [], {}, special chars, symbols
- Negative numbers
- Decimals instead of integers
- Boundary conditions
- Repetition / duplication
- Upper and lower case characters
- 0, 1, and multiple items in a collection
- Data types
- Exceptions
- Missing arguments

Case: 
Inputs: 
Outputs:


D: Data Structure
- Store plug-in words in a hash, where the key is the word type, and the value
  is an array of words.
    - This will enable sampling of the array.
- Text data must include some indicator of word type. Can use %{noun}.

A: Algorithm
- Read in the text file.
- Split the text by space.
- Map over each word, check it with regex to see it it requires replacement.
- Use regex to select the %{...} and replace with a random word.
  - Sample the array of the hash key
- Print the transformed string.

C: Code
=end

REPLACEMENTS = {
  adjective: %w(quick lazy sleepy ugly),
  noun:      %w(fox dog head leg),
  verb:      %w(jumps lifts bites licks),
  adverb:    %w(easily lazily noisily excitedly),
}

template_text = File.read('madlibs_revisited.txt')
mad_text = template_text.gsub(/%{([a-z]*)}/) do |_|
  REPLACEMENTS[$1.to_sym].sample
end
puts $1
puts template_text
puts mad_text

# File.open('madlibs_revisited.txt') do |file|
#   file.each do |line|
#     puts format(line, noun:      REPLACEMENTS[:noun].sample,
#                       verb:      REPLACEMENTS[:verb].sample,
#                       adjective: REPLACEMENTS[:adjective].sample,
#                       adverb:    REPLACEMENTS[:adverb].sample)
#   end
# end

# madlib_text = raw_text.map do |line|
#   while line =~ /%{\S+}/
#     replacement_word = REPLACEMENTS[word_type.to_sym].sample
#     line.sub
#   end
#   line.split.map do |word|
#     if word =~ /%{(\S+)}/
#       word_type = word.match(/%{(\S+)}/)[1]
#       replacement_word = REPLACEMENTS[word_type.to_sym].sample
#       # Preserves punctuation
#       word.gsub(/%{\S+}/, replacement_word)
#     else
#       word
#     end
#   end.join(' ')
# end

# puts madlib_text

# File.open('madlibs_revisited.txt') do |file|
#   file.each do |line|
#     puts format(line, noun: REPLACEMENTS[:noun].sample,
#                       verb: REPLACEMENTS[:verb].sample,
#                       adjective: REPLACEMENTS[:adjective].sample,
#                       adverb: REPLACEMENTS[:adverb].sample)
#   end
# end