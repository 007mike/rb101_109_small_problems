def fizzbuzz(first,last)
  results = []
  first.upto(last) do |num|
    results << fizzbuzz_value(num)
  end
  puts results.join(', ')
end

def fizzbuzz_value(num)
  if num % 3 == 0 && num % 5 == 0
    'FizzBuzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    "Buzz"
  else
    num
  end
end

fizzbuzz(1, 15)