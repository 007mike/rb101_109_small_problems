# given a string containing characters and letters
# replace all non letters with a space
# never have more than 1 space in a row
#1. split the given string into substrings
#2. iterate over each word
#3. iterate over each character using includes a regex
#4. push letters into a new string

def cleanup(str)
  words = str.split
  letters_only = ''
  words.each do |word|
    count = 0
    while count < word.length
      if /[a-z]/.match(word[count])
        letters_only << word[count]
      else
        letters_only << ' '
      end
      count += 1
    end
    letters_only << ' '
  end
  letters_only.split.join(' ')
end

p cleanup("---what's my +*& line?")