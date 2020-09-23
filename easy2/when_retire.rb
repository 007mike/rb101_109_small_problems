require 'date'

print "What is your age? "
age = gets.chomp.to_i

print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = Date.today.year
retire_year = current_year + (retire_age - age)
years_to_go = retire_age - age

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_to_go} years of work to go!"