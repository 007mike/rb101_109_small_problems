def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(int)
  operator = int < 0 ? '-' : int > 0 ? '+' : ''
  int = -int if int < 0
  operator + integer_to_string(int)
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'