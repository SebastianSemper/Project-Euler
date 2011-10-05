=begin
The prime 41, can be written as the sum of six consecutive primes:

41 = 2 + 3 + 5 + 7 + 11 + 13
This is the longest sum of consecutive primes that adds to a prime below one-hundred.

The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.

Which prime, below one-million, can be written as the sum of the most consecutive primes?
=end
def ist_prim(x)  
      if ((x+1) % 6) == 0 or ((x-1) % 6) == 0
	i = 0      
	for i in 2..Math.sqrt(x).floor
	  if x % i == 0
	    return 0
	  end	
	end
	return 1
      else
	return 0	  
      end    
end

g = 1000000
p = Array.new()
p << 2
p << 3
n,i,j = 1,0,0
s = 0
s_m = 0
a = 0
a_m = 0
ende = 0
for i in 5..g
  if ist_prim(i) == 1 
    p << i 
    n+=1
  end
end
puts "Primzahlen sind generiert!"
for i in 0..n  
  for j in i..n
    ende = 0
    s += p[j] 
    a += 1    
    if s < g     
      #if a > a_m
	if  p.index(s) != nil and a > a_m
	  s_m = s
	  a_m = a
	end
      #end
    else
      a = 0
      s = 0
      ende = 1
    end
    break if ende == 1
  end
end
puts a_m
puts s_m

