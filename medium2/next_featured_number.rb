def valid_feature?(n)
  num_chars = n.to_s.split('')
  
  0.upto(9) do |x|
    return false if num_chars.count(x.to_s) > 1
  end

  true
end

def featured(n)
  n += 1
  n += 1 until n.odd? && n % 7 == 0

  loop do
    break if n > 9_876_543_210
    return n if valid_feature?(n)
    n += 7
  end

  'Number too large to feature.'
end

puts featured(12) #== 21
puts featured(20) #== 21
puts featured(21) #== 35
puts featured(997) #== 1029
puts featured(999_999)
puts featured(999_999_987)
puts featured(9_999_999_999)