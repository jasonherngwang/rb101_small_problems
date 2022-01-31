=begin
P: Understand the Problem
Problem Statement
The transpose of a matrix is the result of swapping its rows and columns.
Write a method that transposes a 3x3 matrix.

Inputs:
- A 2-D nested array representing a matrix. 
Outputs:
- A 2-D nested array of the same size, representing the transpose of the input
  matrix.
Explicit Requirements
- 
Implicit Requirements
- 
Clarifying Questions
- Return new object or mutate existing one?
  - New array.
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


A: Algorithm
- Input is a nested 2-D array called `matrix`
- Initialize variables `rows` and `cols` to the number of rows and columns,
  respectively.
- Create empty result array
- Iterate from 0 to cols-1, using variable `n`.
  - Initialize empty array transpose_row.
  - Iterate from 0 to rows-1, using variable `m`.
    - Append matrix[row][col] to transpose_row
  - Append transpose_row to the result array
- Return the result array


C: Code
=end

# Traverse down each vertical column, adding each element to a new horizontal
# row in the new transpose matrix.
def transpose(matrix)
  rows = matrix.length
  cols = matrix[0].length
  transpose = []

  (0...cols).each do |n|
    transpose_row = []
    (0...rows).each do |m|
      transpose_row << matrix[m][n]
    end
    transpose << transpose_row
  end

  transpose
end

# Official solution. Create new horizontal row of correct length, and replace
# the elements one-by-one as you traverse down each vertical column.
def transpose(matrix)
  transpose = []
  (0...matrix[0].length).each do |n|
    transpose_row = (0.upto(matrix.length - 1).map do |m|
      matrix[m][n]
    end)
    transpose << transpose_row
  end
  transpose
end

# Forum answer
def transpose(matrix)
  new_matrix = []
  matrix[0].size.times do |idx|
    new_matrix << matrix.map {|sub| sub[idx]}
  end
  new_matrix
end

# This only works for square matrices.
def transpose!(matrix)
  rows = matrix.length
  cols = matrix[0].length

  (0..cols - 2).each do |n|
    (1..rows - 1).each do |m|
      matrix[n][m], matrix[m][n] = matrix[m][n], matrix[n][m]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
matrix = [[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]

# matrix.each { |row| p row }
# transpose!(matrix).object_id
# matrix.each { |row| p row }

# new_matrix = transpose(matrix)
# new_matrix.each { |row| p row }

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]