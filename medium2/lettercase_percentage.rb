def letter_percentages(str)
  {
    lowercase: (str.count('a-z') / str.length.to_f * 100),
    uppercase: (str.count('A-Z') / str.length.to_f * 100),
    neither: (str.count('^a-zA-Z') / str.length.to_f * 100)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }