NUM_HASH = { '0' => 0,
             '1' => 1,
             '2' => 2,
             '3' => 3,
             '4' => 4,
             '5' => 5,
             '6' => 6,
             '7' => 7,
             '8' => 8,
             '9' => 9 }

def string_to_integer(num_string)
  digits_string = num_string.split('').reverse
  digits_integer = []
  int_output_sum = 0

  digits_string.each { |num| digits_integer << NUM_HASH[num] }

  digits_integer.each_with_index do |int, idx|
    int_output_sum += int * (10**idx)
  end

  int_output_sum
end

def string_to_signed_integer(str)
  multiplier = str.slice(0) == '-' ? -1 : 1
  str.slice!(0) if str.start_with?('+', '-')
  
  string_to_integer(str) * multiplier
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
 