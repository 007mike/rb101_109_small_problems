def tip(bill, tip)
  (bill * (tip / 100)).round(2)
end

print "What is the bill? "
bill_amount = gets.chomp.to_f

print "What is the tip percentage? "
tip_percent = gets.chomp.to_f

bill_with_tip = bill_amount + tip(bill_amount, tip_percent)

puts "The total tip is $#{tip(bill_amount, tip_percent)}"
puts "The total bill is $#{bill_with_tip}"