def xor?(bool1, bool2)
  return true if bool1 && !bool2
  return true if bool2 && !bool1
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
