require 'csv'

measurements = CSV.read("./depth_measurements.csv").flatten.map(&:to_i)

sum_increments = 0
previous_sum = 0
measurements.each_cons(3) do |cons|
  # Don't count the first time through because there is no previous sum
  if previous_sum > 0
    sum_increments += 1 if cons.sum > previous_sum
  end
  previous_sum = cons.sum
end

puts sum_increments
