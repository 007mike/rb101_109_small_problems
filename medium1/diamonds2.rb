def diamond(number)
  half = number / 2
  stars = 1
  
  1.upto(half) do |row|
    puts ('*' * stars).center(number)
    stars += 2
  end

  (half + 1).downto(1) do |row|
    puts ('*' * stars).center(number)
    stars -= 2
  end
end

diamond(9)
