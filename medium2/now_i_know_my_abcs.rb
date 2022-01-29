=begin
P: Understand the Problem
Problem Statement
Spelling blocks have 2 letters each. Combine the blocks to make a word.
Only 1 letter on each block can be used.

Inputs:
- 1 string
Outputs:
- Boolean indicating whether the word can be spelled using the blocks.
Explicit Requirements
- 
Implicit Requirements
- Case does not matter.
- Only 1 of each block in the collection.
Clarifying Questions
- Return new object or mutate existing one?
  - New boolean
Problem Domain, Domain-Specific Terms
- 

Mental Model


E: Examples, Test Cases, Edge Cases
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true


D: Data Structure
Array, maybe Hash to store blocks
Nested array with 2 element, the letters

A: Algorithm
Approach 1
- Created an array where each element has 2 characters, e.g. ['BO',...].
- Split the string into an array of characters.
- Iterate through the array.
  - Iterate through the blocks array, checking if the character is either of
    the two characters belonging to the block.
      - If so, delete the block from the array.
      - If not, then the word cannot be made. Return false.
      - Return true at the end.

Approach 2
- Iterate over each block.
  - If both letters on 1 block are present in the string, return false.
- If no false was returned, return true
- Alternatively, use the Array#none? to check all blocks.

Approach 3
- Create a hash with one side of the block as the key, and the other side as
  the value.
- Iterate through all the characters in the string.
  - Using the current char as the key, look up the value in the hash.
    - Check if the string includes the value. If so, then return false
      because the string cannot have both the key and value since they are
      two side of the same block.
- This does not account for repeated characters, so must check that the
  string's characters are unique: word.chars == word.chars.uniq

C: Code
=end



# def block_word?(str)
#   blocks = ['BO','XK','DQ','CP','NA','GT','RE','FS','JW','HU','VI','LY','ZM']
#   str.chars.each do |char|
#     return false if !blocks.any? { |block| block.include? char.upcase }
#     blocks.delete_if { |block| block.include? char.upcase }
#   end
#   true
# end

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
# def block_word?(str)
#   str_uppercase = str.upcase
#   BLOCKS.none? { |block| str_uppercase.count(block) > 1 }
# end

def block_word?(word)
  blocks_used = word.upcase.chars.map do |char| 
    BLOCKS.select { |block| block.include? char }
  end
  blocks_used == blocks_used.uniq
end

p block_word?('BATCH')# == true
p block_word?('BUTCH')#s == false
p block_word?('jest')# == true