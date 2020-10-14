PAIRS = ['bo', 'xk', 'dq', 'cp', 'na', 'gt', 're', 'fs', 'jw', 'hu', 'vi', 'ly', 'zm']

def block_word?(str)
  PAIRS.each do |pair|
    count = 0
    pair.chars.each do |char|
      count += 1 if str.downcase.include?(char)
      return false if count > 1
    end
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true