=begin
P: Understand the Problem
Problem Statement
Write a method that rotates a matrix 90 degrees clockwise.

Inputs:
- 1 2-D nested array, representing a matrix
Outputs:
- 1 2-D nested array, representing the rotated matrix.
Explicit Requirements
- 
Implicit Requirements
- Rotating an mxn matrix results in a matrix with dimensions nxm.
Clarifying Questions
- Return new object or mutate existing one?
  - New array, without mutating the input array.
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
3  4  1
9  7  5
Outputs:
9  3
7  4
5  1


D: Data Structure
All arrays

A: Algorithm
The difference between this method and the matrix transpose method is that each
row in the rotated matrix is reversed from the transpose.
- Can use a step-down range, or reverse the array.

- Create a result array `rotated_matrix`.
- Iterate from 0 to cols-1 (block parameter n).
  - Append a new row to rotated_matrix. To create this row:
    - Create an empty array to represent a row of the new matrix.  
    - Iterate from rows-1 down to 0 (block parameter m), inserting matrix[m][n]
      into the empty row array.
- Return the result matrix

C: Code
=end

def rotate90(matrix)
  rotated_matrix = []
  (0...matrix.first.length).each do |n|
    new_row = []
    (matrix.length - 1).downto(0).each do |m|
      new_row << matrix[m][n]
    end
    rotated_matrix << new_row
  end
  rotated_matrix
end

def rotate(matrix, angle=90)
  (angle / 90).times { matrix = rotate90(matrix) }
  matrix
end

# Recursive solution
def rotate(matrix, angle)
  return matrix if angle == 0
  rotate(rotate90(matrix), angle - 90)
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

p rotate(matrix1, 0)
p rotate(matrix1, 90)
p rotate(matrix1, 180)
p rotate(matrix1, 270)
p rotate(matrix1, 360)