def lights_toggle(number)
  lights_arr = Array.new(number, 0)
  1.upto(number) do |n|
    1.upto(number) do |x|
      toggle = n * x
      break if toggle > number
      lights_arr[toggle - 1] == 1 ? lights_arr[toggle -1] = 0 : lights_arr[toggle - 1] = 1
      p lights_arr
    end
  end

  lights_arr.map.with_index do |val, idx|
    (idx + 1) if val == 1
  end.compact
end

p lights_toggle(5)
p lights_toggle(10)