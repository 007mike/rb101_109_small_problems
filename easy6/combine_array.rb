def merge(arr1, arr2)
  arr_merge = (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9])