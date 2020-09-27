def time_of_day(minutes)
  hh = minutes.abs / 60
  hh = hh % 24 if hh > 24
  hh = 24 - (hh + 1) if minutes < 0
  mm = minutes.abs % 60
  mm = 60 - mm if minutes < 0
  format('%02d:%02d', hh, mm)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
