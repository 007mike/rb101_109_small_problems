# input string of words
# output a hash with keys as lengths and values as number of words of that length
# 1. split the sentence into individual words
# 2. iterate over the words
# 3. measure the lenght of the string
# 4. inject the key (if it doesn't exist) and increment the value

def word_sizes(str)
  lengths_hsh = {}
  
  str.split.each do |word|
    if lengths_hsh.key?(word.length)
      lengths_hsh[word.length] += 1
    else
      lengths_hsh[word.length] = 1
    end
  end
  
  lengths_hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}