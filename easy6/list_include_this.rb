def include?(arr,val)
  arr.each { |sub_arr| return true if sub_arr == val }
  false
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false