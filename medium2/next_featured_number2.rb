def featured(n)
  n += 1
  n += 1 until n.odd? && n % 7 == 0

  loop do
    break if n > 9_876_543_210
    num_chars = n.to_s.split('')
    return n if num_chars.uniq == num_chars
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