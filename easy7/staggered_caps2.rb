def staggered_case(str)
  staggered = ''
  upper = true
  str.chars do |char|
    if /[a-z]/i =~ char
      upper ? staggered << char.upcase : staggered << char.downcase
      upper = !upper
    else
      staggered << char
    end
  end
  staggered
end


p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'