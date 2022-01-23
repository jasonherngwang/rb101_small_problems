=begin
P: Understand the Problem
Problem Statement
Write a method that will take a short line of text, and print it within a box.
Inputs:
- 1 string
Outputs:
- Input string printed inside a box.
Explicit Requirements
- 
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - No return. Side effect of printing only.

Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples or Test Cases
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

D: Data Structure


A: Algorithm
- Find string length.
- Draw box.
- Center string with padding.

Version with line wrapping

Method to perform line wrapping
- Side padding and border will occupy 4 spaces total, so max space for text is
  76 spaces.
- Assume no hypenation and no words > 76 characters.
- Split the string into individual words.
- Create an empty array `lines` to hold string < 76 chars.
- Iterate through the word list
  - Create an empty string to represent a line of text.
  - While string length < 76:
    - Append words to the string, each followed by a space.
    - If string would exceed 76
      - Append current string to `lines`.
      - Reset string to empty string.

- Print the top line and second line, each 80 spaces wide
- Iterate through the `lines` array.
  - Print '| '.
  - Print the current string, left-justified to 76 chars.
  - Print ' |'.
- Print an empty line and the bottom line.

C: Code
=end

# def print_in_box(str)
#   width = str.length + 2
#   puts '+' + '-' * width + '+'
#   puts '|' + ' ' * width + '|'
#   puts '| ' + str + ' |'
#   puts '|' + ' ' * width + '|'
#   puts '+' + '-' * width + '+'
# end

TERMINAL_WIDTH = 80

def print_in_box(str)
  box_width = [TERMINAL_WIDTH, str.length + 4].min

  horizontal_rule = '+' + '-' * (box_width - 2) + '+'
  empty_row = '+' + ' ' * (box_width - 2) + '+'
  body_text = create_body(str, box_width)

  puts horizontal_rule
  puts empty_row
  puts body_text
  puts empty_row
  puts horizontal_rule

end

# Create array of strings formatted to specified max width.
def create_body(str, width)
  words = str.split
  body = []
  
  # Creates a nested array. Each sub-array contains the words for each line.
  word_counter = 0
  until word_counter >= words.length
    new_line = create_line(words[word_counter..], width - 4)
    body << new_line
    word_counter += new_line.length
  end
  
  body.map { |line| format_line(line, width) }
end

# Given array of words, return as many as possible from the front than can fit
# on a line of specified width.
def create_line(words, width)
  line_words = []

  words.each do |word|
    break if (line_words + [word]).join(' ').length > width
    line_words << word
  end

  line_words
end

def format_line(words, width)
  '+ ' + words.join(' ').ljust(width - 4) + ' +'
end


# p create_body('The quick fox jumped.', 25)
# p create_line(['The', 'quick', 'fox', 'jumped.'], 21)
# p format_line(['The', 'quick', 'fox', 'jumped.'], 25)

print_in_box('The quick fox jumped over the lazy dog. 
  The quick fox jumped over the lazy dog. 
  The quick fox jumped over the lazy dog.')
print_in_box('Hello world!')
print_in_box('To boldly go where no one has gone before.')
print_in_box('')
