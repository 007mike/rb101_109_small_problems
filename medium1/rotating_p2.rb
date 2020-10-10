def rotate_array(arr)
  new_arr = arr.dup
  new_arr << new_arr.shift
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_rightmost_digits(num, digits)
  num_str = num.to_s
  num_size = num_str.length
  right = num_str[(num_size - digits)..-1]
  digits == 6 ? left = '' : left = num_str[0..(num_size - digits - 1)]

  (left + rotate_string(right)).to_i
end


p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917