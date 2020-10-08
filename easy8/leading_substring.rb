def leading_substrings(str)
  substrings = []
  str.chars do |char|
    if substrings.length == 0
      substrings << char
      next
    else
      substrings << substrings[-1] + char
    end
  end
  substrings
end

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']