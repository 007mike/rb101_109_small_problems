require 'pry'
require 'pry-byebug'

def fibonacci(n)
  fib = []
  1.upto(n) do |i|
    if i <= 2
      fib << 1
    else
      #binding.pry
      fib << fib[i -2] + fib[i -3]
    end
  end
  fib

end

p fibonacci(20) #== 6765