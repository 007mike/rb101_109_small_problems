NUMBER_NAMES = %w(zero one two three four five six seven eight nine
                    ten eleven twelve thirteen fourteen fifteen
                    sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  arr.sort_by { |el| NUMBER_NAMES[el] }
end

p alphabetic_number_sort((0..19).to_a)