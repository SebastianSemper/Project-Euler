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

def teile(x,y)
  if x > 1
    if (x % y) == 0
      puts y.to_s + " teilt " + x.to_s +  " zu " + (x/y).to_s
      teile((x/y),y)
    else
      z = next_prime(y)
      teile(x,z)
    end
  else
    puts "fertig!"
    return
  end
end
start = 600851475143
#start = 40
prim = 2
teile(start,prim)


