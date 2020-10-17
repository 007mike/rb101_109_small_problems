def stars(n)
  rows = n / 2 - 1
  
  0.upto(rows) do |i|
    spaces = ((n - 3) / 2) - (1 * i)
    puts "#{' ' * (i * 1)}*#{' ' * spaces}*#{' ' * spaces}*"
  end
  
  puts "#{'*' * n}"
  
  rows.downto(0) do |i|
    spaces = ((n - 3) / 2) - (1 * i)
    puts "#{' ' * (i * 1)}*#{' ' * spaces}*#{' ' * spaces}*"
  end
end

stars(9)