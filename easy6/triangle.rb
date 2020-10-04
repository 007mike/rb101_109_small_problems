def triangle(size)
  spaces = ' '
  stars = '*'

  size.times do |x|
    puts "#{spaces * (size - x -1)}" + "#{stars * (x +1)}"
  end
end



triangle(5)
triangle(9)