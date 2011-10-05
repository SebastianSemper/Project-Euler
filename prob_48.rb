=begin
Find the last ten digits of 11 + 22 + ... + 10001000.
=end

i = 1
summe = 0
for i in 1..1000
  summe += i**i
end
puts summe.to_s