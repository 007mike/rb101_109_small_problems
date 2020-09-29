# given a string containing characters and letters
# replace all non letters with a space
# never have more than 1 space in a row
#1. split the given string into substrings
#2. iterate over each word
#3. iterate over each character using includes a regex
#4. push letters into a new string

def cleanup(str)
  char_clean = []
  str.chars.each do |char|
    if /[a-z]/.match(char)
      char_clean << char
    else
      char_clean << ' ' unless char_clean[-1] == ' '
    end
  end
  char_clean.join
end

p cleanup("---what's my +*& line?")
p cleanup("--^&-what's my house in ^&*dj^uf +*& line?")