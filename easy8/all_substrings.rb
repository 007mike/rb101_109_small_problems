def substrings(str)
  all_subs = []
  while str.length > 0
    str.length.times do |idx|
      all_subs << str[0..idx]
    end
    str.delete!(str[0])
  end
  all_subs
end

p substrings('abcde')