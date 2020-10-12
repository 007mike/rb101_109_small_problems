def diamond(number)
  spaces = (number - 1) / 2
  stars = 1
  half = number / 2
  
  1.upto(half) do |row|
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces -= 1
    stars += 2
  end
  
  (half + 1).downto(1) do |row|
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces += 1
    stars -= 2
  end
end

diamond(9)