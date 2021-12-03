input = File.readlines("../inputs/day_2.txt").map {|l| l.gsub("\n", "").split(" ") }

def calculate_dive(input)
  horizontal = 0
  depth = 0

  input.each do |move|
    direction = move[0]
    distance = move[1].to_i

    case direction
    when 'forward'
      horizontal += distance
    when 'down'
      depth += distance
    when 'up'
      depth -= distance
    end
  end

  horizontal*depth
end

def calculate_dive_p2(input)
  horizontal = 0
  depth = 0
  aim = 0

  input.each do |move|
    direction = move[0]
    distance = move[1].to_i

    case direction
    when 'forward'
      horizontal += distance
      depth += distance*aim
    when 'down'
      aim += distance
    when 'up'
      aim -= distance
    end
  end

  horizontal*depth
end

p calculate_dive(input)
p calculate_dive_p2(input)