def merge(a1, a2)
  temp = [a1, a2].flatten
  merged = []
  
  while temp.size > 0
    smallest = temp.min
    0.upto(temp.count(smallest) -1) { |_| merged << smallest }
    temp.delete(smallest)
  end

  merged
end


p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]