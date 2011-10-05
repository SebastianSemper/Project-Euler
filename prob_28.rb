=begin
Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:

21 22 23 24 25
20  7  8  9 10
19  6  1  2 11
18  5  4  3 12
17 16 15 14 13

It can be verified that the sum of the numbers on the diagonals is 101.

What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
=end
n = 1001
i = 0
summe = 0
quadrat_ger, quadrat_ung, kleinste, mitte = 0,0,0,0
for i in 3..n
  if i % 2 != 0
    quadrat_ung = i**2 #rechtsoben
    quadrat_ger = ((i-1)**2)+1 #linksunten
    mitte = ((quadrat_ung+quadrat_ger)/2) #linkssoben
    kleinste = quadrat_ger - (quadrat_ung-mitte)    
    summe += quadrat_ger + quadrat_ung + mitte + kleinste
  end
end
puts (summe+1).to_s