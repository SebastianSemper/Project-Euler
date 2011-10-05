=begin
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
siehe prob_13.res
=end
file = File.new("prob_13.res", "r")
i = 0
summe = 0
while (line = file.gets)
  summe += line.to_i
end
file.close
puts summe