num_collection = []
input_numbers = ['1st', '2nd', '3rd', '4th', '5th']
counter = 0

input_numbers.each do |number|
  puts "==> Enter the #{number} number:"
  num_collection[counter] = gets.chomp.to_i
  counter += 1
end

puts "Enter the last number:"
last_number = gets.chomp.to_i

if num_collection.include?(last_number)
  puts "The number #{last_number} appears in #{num_collection}"
else
  puts "The number #{last_number} does not appear in #{num_collection}"
end