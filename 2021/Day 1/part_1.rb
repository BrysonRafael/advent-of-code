require 'csv'

measurements = CSV.read("./depth_measurements.csv").flatten.map(&:to_i)

increments = 0
measurements.each_with_index do |measurement, index|
  next_measurement = measurements[index + 1]
  break if next_measurement.nil?

  increments += 1 if next_measurement > measurement
end

puts increments
