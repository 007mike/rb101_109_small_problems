def square_of_sum(n)
  sum_int = 0
  1.upto(n) { |i| sum_int += i }
  sum_int ** 2
end

def sum_of_squares(n)
  sum_squares = 0
  1.upto(n) { |i| sum_squares += i **2}
  #sum_squares
end

def sum_square_difference(n)
  sq_of_sum = square_of_sum(n)
  sum_of_sq = sum_of_squares(n)
  sq_of_sum - sum_of_sq
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150