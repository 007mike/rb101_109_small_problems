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

def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5  (the 100th Fibonacci number is 354224848179261915075)