def reverse!(arr)
  arr.sort! do |a, b|
    b <=> a
  end
  arr
end


p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id