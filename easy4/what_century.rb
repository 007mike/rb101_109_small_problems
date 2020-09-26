# write a method that takes a year as input and returns the century
# input: year (integer)
# output: century with st, nd, rd or th appended (string)
# explicit: return a string
# string consists of 2 components - century and suffix
# years that end with 01 start a new century - 1901 - 2000 is a century
# implicit: century needs to be converted from integer to string to append suffix
# 3. compute the century number (input integer / 100 + 1)
# 4. figure out the proper suffix to append to the century number
# 5. convert century number to string and append suffix
# 6. return combined string

def century(number)
  century_int = ''
  suffix_str = ''

  century_int = (number / 100) + 1
  century_int -= 1 if number % 100 == 0
  suffix_str = suffix(century_int)

  century_int.to_s + suffix_str
end

def suffix(cent_num)
  return 'th' if [11, 12, 13].include?(cent_num % 100)

  last_digit = cent_num % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

puts century(2000) #== '20th'
puts century(2001) #== '21st'
puts century(1965) #== '20th'
puts century(256) #== '3rd'
puts century(5) #== '1st'
puts century(10103) #== '102nd'
puts century(1052) #== '11th'
puts century(1127) #== '12th'
puts century(11201) #== '113th'