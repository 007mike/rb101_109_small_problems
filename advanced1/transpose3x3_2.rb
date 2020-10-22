def transpose(array)
  transposed = []
  0.upto(2) do |col|
    transposed << 0.upto(2).map {|row| array[row][col]}
  end
  transposed
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]