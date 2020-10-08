def leading_substrings(str)
  substrings = []
  str.length.times do |idx|
    substrings << str[0..idx]
  end
  substrings
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(str)
  palindromes = []
  all_subs = substrings(str)
  all_subs.each do |sub|
    palindromes << sub if sub == sub.reverse && sub.length > 1
  end
  palindromes
end


# p palindromes('abcde')
p palindromes('hello-madam-did-madam-goodbye')
p palindromes('knitting cassettes')