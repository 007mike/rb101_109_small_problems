def crunch(str)
  clean_str = ''
  str.chars do |char|
    clean_str << char unless char == clean_str[-1]
  end
  clean_str
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
