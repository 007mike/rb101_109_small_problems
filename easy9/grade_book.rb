def grades(avg)
  case avg
  when 90..100 then 'A'
  when 80..90 then 'B'
  when 70..80 then 'C'
  when 60..70 then 'D'
  else 'F'
  end
end

def average(n1,n2,n3)
  (n1 + n2 + n3) / 3
end

def get_grade(n1,n2,n3)
  avg_grade = average(n1,n2,n3)
  grades(avg_grade)
end




p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(60, 60, 65)
p get_grade(70, 70, 75)
p get_grade(50, 50, 80)
p get_grade(50, 50, 30)