def stringy(int)
  bit_string = ''
  int.times do |x|
    if x.odd?
      bit_string << '0'
    else
      bit_string << '1'
    end
  end
  bit_string
end




puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'