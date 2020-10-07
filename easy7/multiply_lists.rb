def multiply_list(arr1, arr2)
  multiplied = []
  arr1.length.times do |x|
    multiplied << arr1[x] * arr2[x]
  end
  multiplied
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]