def fibonacci(n)
  fib = []
  1.upto(n) do |i|
    case i
    when 1..2 then fib << 1
    else fib << fib[-2] + fib[-1]
    end
  end
  fib.last
end

p fibonacci(2)
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001)