def multiply_all_pairs(arr1, arr2)
  multiplied = []
  arr1.map do |x|
    arr2.map do |y|
      x * y
    end
  end.flatten.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])