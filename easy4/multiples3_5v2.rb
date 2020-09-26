def multisum(number)
  (1..number).select { |num| num % 3.zero? || num % 5.zero? }.reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(20) == 98
puts multisum(1000) == 234_168
