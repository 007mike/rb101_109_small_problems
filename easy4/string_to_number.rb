NUM_HASH = { '0' => 0,
             '1' => 1,
             '2' => 2,
             '3' => 3,
             '4' => 4,
             '5' => 5,
             '6' => 6,
             '7' => 7,
             '8' => 8,
             '9' => 9 }

def string_to_integer(num_string)
  digits_string = num_string.split('').reverse
  int_output = 0
  digits_integer = []
  
  digits_integer = digits_string.map do | num |
                      NUM_HASH[num]
                   end

  digits_integer.each_with_index do | int, idx |
    int_output += int * (10 ** idx)
  end

  int_output
end

p string_to_integer('570')
p string_to_integer('4321')