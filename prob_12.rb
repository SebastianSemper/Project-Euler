=begin
What is the largest prime factor of the number 600851475143?
Programm findet alle Primfaktoren. Den größten zuletzt.
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
      for j in 2..((Math.sqrt(i))+1)
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

def anzahl_teiler(x) 
  zahl = x
  teiler = 1
  potenz = 0
  potenz_2 = 0
  ende = 0
  prim = 2
  letzte = 0
  while ende == 0 do
    if x % prim == 0      
      x /= prim
      if prim == 2
	potenz_2 += 1	    
      end
      potenz += 1 
    else
      if prim == 2 and potenz_2 > 0
	teiler = teiler * potenz_2
      else
	teiler = teiler * (potenz+1)
      end
      potenz = 0
      prim = next_prime(prim)
      ende = 1 if prim > zahl/2
    end    
  end
  teiler = 2 if teiler < 2
  return teiler
end

def anzahl_teiler_alt(x) 
  zahl = x
  teiler = 1
  potenz = 0
  potenz_2 = 0
  ende = 0
  prim = 2
  letzte = 0
  while ende == 0 do
    if x % prim == 0      
      x /= prim      
      potenz += 1 
    else      
      teiler = teiler * (potenz+1)      
      potenz = 0
      prim = next_prime(prim)
      ende = 1 if prim > zahl/2
    end    
  end
  teiler = 2 if teiler < 2
  return teiler
end

def teiler_n(n)
  n_0 = n
  n_1 = n+1
  teiler = 0
  teiler = anzahl_teiler(n_1)*anzahl_teiler(n_0)
  return teiler
end
i = 100
gefunden = 0
teiler = 0
while gefunden == 0 do
  i += 1
  teiler = anzahl_teiler(i)*anzahl_teiler(i+1)
  puts "i: " + i.to_s + " - " + teiler.to_s if i % 100 == 0
  gefunden = 1 if teiler >= 500
end
puts i.to_s

