def lights_init(number)
  lights_init_arr = Array.new(number, 0)
end

def display_on_lights(arr)
  arr.map.with_index do |val, idx|
    (idx + 1) if val == 1
  end.compact
end

def lights_toggle(number, arr)
  1.upto(number) do |i|
    1.upto(number) do |x|
      toggle = i * x
      break if toggle > number
      arr[toggle - 1] = arr[toggle - 1] == 1 ? 0 : 1
    end
  end
end

def lights_main(number)
  lights = lights_init(number)
  lights_toggle(number, lights)
  display_on_lights(lights)
end


p lights_main(5)
p lights_main(10)