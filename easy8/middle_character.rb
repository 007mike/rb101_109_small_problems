def center_of(str)
  center = str.length / 2
  str.length.odd? ? str[center] : str[center -1, 2]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'