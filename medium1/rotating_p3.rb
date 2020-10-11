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

def max_rotation(num)
  num.to_s.length.downto(1) do |n|
    num = rotate_rightmost_digits(num, n)
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845