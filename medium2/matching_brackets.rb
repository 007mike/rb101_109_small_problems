def balanced?(str)
  score = 0
  str.chars do |char|
    score +=1 if char.include?('(')
    score -=1 if char.include?(')')
    return false if score < 0
  end
  score.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false