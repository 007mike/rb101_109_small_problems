vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(cars_array)
  car_count = {}
  cars_array.each.uniq do |element|
    car_count[element] = cars_array.count(element)
  end

  car_count.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)