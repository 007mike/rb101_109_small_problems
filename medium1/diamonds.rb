def diamond(number)
  spaces = number - 1
  stars = 1
  half = number / 2
  
  1.upto(half) do |row|
    puts "#{' ' * (spaces / 2)}#{'*' * stars}#{' ' * (spaces / 2)}"
    spaces -= 2
    stars += 2
  end
  
  #spaces = 0
  #stars = number

  (half + 1).downto(1) do |row|
    puts "#{' ' * (spaces / 2)}#{'*' * stars}#{' ' * (spaces / 2)}"
    spaces += 2
    stars -= 2
  end
end






diamond(9)