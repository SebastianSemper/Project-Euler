=begin
What is the 10001st prime number?
bei 2 anfangen und einfach abzähln! dauert ein wenig xD
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
    teiler = 0    
    for j in 2..(i-1)
      #schleife durchläuft alle möglichen _teiler_ von i      
      if (i % j) == 0	
	teiler = 1
      
      end
      break if teiler == 1 
    end  
    if teiler == 0 
      return i
    end          
  end
end

i = 0
prim = 1
for i in 1..10001
  prim = next_prime(prim) 
end
puts prim.to_s

