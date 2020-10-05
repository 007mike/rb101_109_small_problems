def letter_case_count(str)
  count_hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars do |char|
    if ('a'..'z').to_a.include?(char)
      count_hsh[:lowercase] += 1
    elsif ('A'..'Z').to_a.include?(char)
      count_hsh[:uppercase] += 1
    else
      count_hsh[:neither] += 1
    end
  end
  count_hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }