=begin
We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.

What is the largest n-digit pandigital prime that exists?
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

n = 2
i = 0
j = 0
z = 0
produkt = 1
a = Array.new
for n in 3..9
  for i in ((10**(n-1))+1)..((10**n)-3)
    for j in 1..n
      a[j] = 0
    end
    for j in 1..n
      z = i.to_s[j-1].to_i
      if z <= n and z > 0
	a[z] += 1
      end      
    end
    for j in 1..n
      produkt *= a[j]
    end
    if produkt == 1
      if ist_prim(i) == 1
	puts "#{i} ist pandigital UND prim!"
      end
    end
    produkt = 1
  end  
end

