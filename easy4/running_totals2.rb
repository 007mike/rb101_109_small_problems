# take an array of numbers and return a new array with a running total of all elements
# explicit: return a new array
# new array size is the same as original array size
# first element in the new array is the same as the first element in original array
# implicit: if original array is empty, return an empty array
# 1. inject element 1 from original array into new array
# 2. iterate over the rest of original array
# 2. current element new array = previous element new array + current element original array

def running_total(numbers)
  numbers.map.with_index { |_, i| numbers[0..i].reduce(:+)}
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

