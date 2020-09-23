def stringy(int, start = 1)
  
  bit_string = ''
  
  int.times do |index|
    if start == 1
      digit = index.odd? ? '0' : '1'
    elsif start == 0
      digit = index.odd? ? '1' : '0'
    end

    bit_string << digit
  end
  
  bit_string
  end

puts stringy(6)
puts stringy(6,0)
puts stringy(6,1)