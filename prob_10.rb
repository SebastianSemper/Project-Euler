=begin
Find the sum of all the primes below two million.
bei 2 anfangen und einfach abzähln und zamzähln! dauert ein wenig xD
=end
def next_prime(x)
  i = 0
  start = x + 1
  ende = 2*x
  j = 0
  teiler = 0
  prim = 0
  for i in start..ende
    #schleife durchläuft alle möglichen _nächsten_ primzahlen
    if (i % 2) != 0
      #nur wenn ungerade
      teiler = 0    
      for j in 2..(Math.sqrt(i))
	#schleife durchläuft alle möglichen _teiler_ von i bis maximal wurzel(i)    
	if (i % j) == 0	
	  #i hat teiler
	  teiler = 1	
	end
	break if teiler == 1 
      end  
      if teiler == 0 
	#kein teiler? dann prim!
	return i
      end
    end
  end
end

i = 0
prim = 2
summe = 0
grenze = 2000000
while prim < grenze   
  if prim < grenze
    summe += prim
  end
  prim = next_prime(prim)  
  break if prim > grenze
end

puts summe.to_s

