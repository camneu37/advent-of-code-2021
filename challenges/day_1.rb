input = File.readlines("../inputs/day_1.txt").map {|l| l.gsub("\n", "") }.map(&:to_i)

def get_count_larger_measurements(input)
  count = 0
  
  input.each_with_index do |item, index|
    next if index == 0
    count += 1 if item > input[index-1]
  end

  count
end

def get_count_larger_measurements_sliding_window(input)
  count = 0

  input.each_with_index do |item, index|
    next if index == 0
    prev_window = input.slice(index - 1, 3)
    curr_window = input.slice(index, 3)
    
    next if curr_window.length < 3

    prev_sum = prev_window.sum
    curr_sum = curr_window.sum
    
    count += 1 if curr_sum > prev_sum
  end

  count
end

p get_count_larger_measurements(input)
p get_count_larger_measurements_sliding_window(input)