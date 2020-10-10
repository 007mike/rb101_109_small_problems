def rotate_array(arr)
  new_arr = arr.dup
  new_arr << new_arr.shift
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_rightmost_digits(num, digit)
  num_str = num.to_s
  rotate = num_str[-digit..-1]
  num_str[-digit..-1] = rotate_string(rotate)
  num_str.to_i
end


p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917