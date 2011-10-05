=begin
Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.
=end

#brute force! nicht schön! pascalsches simplex für 100 finden! alle koeffizienten außer 1 mit jeweiligen partnern
#sind die differenz

n = 100
summe_1 = 0
summe_2 = 0
i = 0
j = 0
for i in 1..n
  summe_1 += i**2
  summe_2 += i
end
puts ((summe_2**2)-summe_1).to_s