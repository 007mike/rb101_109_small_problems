# given a string, create two functions to compute minutes before midnight
# or numbers after midnight
# 00:00 case should produce 0
# 24:00 case should produce 0

def after_midnight(time_str)
  hh = time_str[0..1].to_i
  mm = time_str[3..4].to_i
  return 0 if hh == 24
  hh * 60 + mm
end

def before_midnight(time_str)
  hh = time_str[0..1].to_i
  mm = time_str[3..4].to_i
  return 0 if hh == 0 && mm == 0
  (24 * 60) - (hh * 60 + mm)
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0