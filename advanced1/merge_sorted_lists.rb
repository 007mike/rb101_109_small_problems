def merge(a1, a2)
  merged = []
  i = 0
  a1.each do |v|
    while i < a2.size && a2[i] <= v
      merged << a2[i]
      i += 1
    end
    merged << v
  end

  merged.concat(a2[i..-1])
end


p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
p merge([1, 4, 5], []) #== [1, 4, 5]