def triangle(s1, s2, s3)
  if valid_triangle(s1, s2, s3)
    return :equilateral if s1 == s2 && s2 == s3
    return :isosceles if s1 == s2 || s2 == s3 || s1 == s3
    return :scalene
  else
    return :invalid
  end
end

def valid_triangle(s1, s2, s3)
  arr = [s1, s2, s3]
  arr.sort!
  return false if arr[0] + arr[1] < arr[2] || arr.include?(0)
  true
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid
