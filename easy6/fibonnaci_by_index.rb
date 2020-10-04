def find_fibonacci_index_by_length(int)
  fib = [1,1]
  index = 2
  loop do
    fib[index] = (fib[index - 2] + fib[index - 1])
    break if fib[index].to_s.length >= int
    index += 1
  end
  index + 1

end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847