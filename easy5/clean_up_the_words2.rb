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
    letters = word.split('')
    letters.each do |letter|
      if /[a-z]/.match(letter)
        letters_only << letter
      else
        letters_only << ' '
      end
    end
    letters_only << ' '
  end
  letters_only.split.join(' ')
end

p cleanup("---what's my +*& line?")