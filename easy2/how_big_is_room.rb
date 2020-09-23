def room_size_sqft(length,width)
  (length * width * 10.7639).round(2)
end

def room_size_sqm(length, width)
  (length * width).round(2)
end

puts "Enter the length of the room in meters:"
len = gets.chomp.to_f

puts "Enter the width of the room in meters:"
wid = gets.chomp.to_f

puts "The area of room is #{room_size_sqm(len, wid)} (#{room_size_sqft(len,wid)} square feet.)"