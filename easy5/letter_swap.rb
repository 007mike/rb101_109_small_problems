# take a string with space seperator and swap the first and last letter
# of each word
# assume only letters and spaces
# assume no empty strings
# assume at least one word, ie non empty

def swap(str)
  words = str.split
  words.each do |word|
    last_letter = word[-1]
    first_letter = word[0]
    word[0] = last_letter
    word[-1] = first_letter
  end

  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'