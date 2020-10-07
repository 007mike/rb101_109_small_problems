def multiply_list(arr1, arr2)
  arr1.length.times.map { |x| arr1[x] * arr2[x] }
end



p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]