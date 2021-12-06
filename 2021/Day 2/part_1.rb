require 'csv'

directions = CSV.read("./planned_course.csv")

horizontal_position = 0
depth = 0
directions.each do |set|
  direction = set[0]
  units = set[1].to_i
  case direction
  when "forward"
    horizontal_position += units
  when "down"
    depth += units
  when "up"
    depth -= units
  else
    puts "Did not account for #{direction} direction!"
  end
end

puts "Horizontal Position: #{horizontal_position}, Depth: #{depth}, Sum: #{horizontal_position * depth}"
