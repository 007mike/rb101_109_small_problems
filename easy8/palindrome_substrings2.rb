def leading_substrings(str)
  leading_sub = []
  str.length.times do |idx|
    leading_sub << str[0..idx]
  end
  leading_sub
end

def substrings(str)
  all_subs = []
  str.length.times do |idx|
    all_subs << leading_substrings(str[idx..-1])
  end
  all_subs.flatten
end

def palindrome?(str)
  str == str.reverse && str.length > 1
end

def palindromes(str)
  palindromes = []
  all_subs = substrings(str)
  all_subs.each do |sub|
    palindromes << sub if palindrome?(sub)
  end
  palindromes
end


p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')