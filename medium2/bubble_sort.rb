def bubble_sort!(arr)
  loop do
    swapped = false
    1.upto(arr.length - 1) do |el|
      next if arr[el - 1] <= arr[el]
      arr[el], arr[el -1] = arr[el -1], arr[el]
      swapped = true
    end
    
    break if !swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)