def halvsies(arr)
  half = arr.length.odd? ? arr.length / 2 + 1 : arr.length / 2
  [arr[0..(half -1)], arr[half..-1]]

end



p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]