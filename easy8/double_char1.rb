def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good jobp !") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''