require 'csv'

bits = CSV.read("./power_consumption.csv").map { |set| set.first.split("") }

gamma = ""
epsilon = ""
bits.transpose.each do |set|
  number_of_zeros = set.count("0")
  number_of_ones = set.count("1")

  if number_of_zeros > number_of_ones
    gamma << "0"
    epsilon << "1"
  else
    gamma << "1"
    epsilon << "0"
  end
end

gamma_decimal = gamma.to_i(2)
epsilon_decimal = epsilon.to_i(2)

p "Gamma: #{gamma_decimal} Epsilon: #{epsilon_decimal} Sum:#{gamma_decimal * epsilon_decimal}"
