# create a method that determines if a year is a leap year
# inputs: integer year
# outputs: boolean true if it's a leap year, false if it's not
# explicit: leap year if divisible by 4
# exceptions divisible by 100 (unless divisible by 400)
# implicit: use modulo operator
# 1. if number < 100 and divisible by 4 - good
# 2. if number >= 100 and divisible by 100 - false UNLESS divisible by 400

def leap_year?(year)
  if (year % 400 == 0) 
    true
  elsif year % 100 == 0 
    false
  elsif year % 4 == 0 
    true
  else 
    false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false #
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false #
puts leap_year?(1752) == true
puts leap_year?(1700) == false #
puts leap_year?(1) == false
puts leap_year?(100) == false #
puts leap_year?(400) == true
