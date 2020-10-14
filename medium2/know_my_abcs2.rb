PAIRS = %w(bo xk dq cp na gt re fs jw hu vi ly zm)

def block_word?(str)
  PAIRS.all? { |pair| str.downcase.count(pair) <= 1 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('bodc')