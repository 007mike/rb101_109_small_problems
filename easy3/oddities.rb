def oddities(array)
  odd = []
  counter = 0
  while counter < array.length
    odd << array[counter]
    counter +=2
  end
  odd
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
