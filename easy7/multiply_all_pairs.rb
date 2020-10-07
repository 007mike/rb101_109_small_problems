def multiply_all_pairs(arr1, arr2)
  multiplied = []
  arr1.each do |x|
    arr2.each do |y|
      multiplied << x * y
    end
  end
  multiplied.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])