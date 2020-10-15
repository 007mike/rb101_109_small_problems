def triangle(a, b, c)
  if valid_triangle(a, b, c)
    return :acute if [a, b, c].all?(0..89)
    return :right if [a, b, c].any?(90)
    return :obtuse
  else
    return :invalid
  end
end

def valid_triangle(a, b, c)
  return false if a + b + c != 180 || [a,b,c].any?(0)
  true
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid