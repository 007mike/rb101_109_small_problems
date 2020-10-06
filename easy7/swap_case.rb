def swapcase(str)
  str.chars.map do |char|
    if ('a'..'z').to_a.include?(char)
      char.upcase
    elsif ('A'..'Z').to_a.include?(char)
      char.downcase
    else
      char
    end
  end.join
end
        
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'