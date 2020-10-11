#require 'pry'
#require 'pry-byebug'

def rotate_array(arr)
  new_arr = arr.dup
  new_arr << new_arr.shift
   new_arr
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x  == [1, 2, 3, 4]                 # => true
p rotate_string('Awesome Sauce')
p rotate_integer(755999)
