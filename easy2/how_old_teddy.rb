teddy_age = (20..200).to_a.sample

puts "What is your name?"
person_name = gets.chomp

person_name = "Teddy" if person_name.empty?

puts "#{person_name} is #{teddy_age} years old!"