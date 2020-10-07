def penultimate(str)
  arr = str.split
  #return arr[0] if arr.length == (0..1)
  arr[((arr.length/2.0).ceil) -1]
end

p penultimate('last word') #== 'last'
p penultimate('Launch School is great!') #== 'is'
p penultimate('This is five word sentence') #== 'five'
p penultimate('single') #== 'single'
p penultimate('') #== nil