def product(integer)
  product = 1
  (1..integer).each do |num|
    product *= num
  end
  product
end

def sum(integer)
  sum = 0
  (1..integer).each do |num|
    sum += num
  end
  sum
end

def sum_or_product(string, integer)
  if string == 's'
    puts "The sum of the integers between 1 and #{integer} is #{sum(integer)}"
  elsif string == 'p'
    puts "The product of the integers between 1 and #{integer} is #{product(integer)}"
  end
end
    

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

sum_or_product(operation, number)