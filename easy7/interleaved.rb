def interleave(arr1, arr2)
  new_arr = []
  arr1.length.times do |x|
    new_arr << arr1[x] << arr2[x]
  end
  new_arr
end

def interleave_zip(arr1, arr2)
  new_arr = arr1.zip(arr2).flatten
end




p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave_zip([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']