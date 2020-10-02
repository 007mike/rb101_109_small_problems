DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60


def dms(flt)
  total_seconds = (flt * MINUTES_PER_DEGREE * SECONDS_PER_MINUTE).round
  degrees, remaining_seconds = total_seconds.divmod(MINUTES_PER_DEGREE * SECONDS_PER_MINUTE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  
  format("#{degrees}#{DEGREE}%02d'%02d\"", minutes, seconds)

end

p dms(76.73) 
p dms(360)
