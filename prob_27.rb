=begin
Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.
=end
def ist_prim(x)
  #if x % 2 != 0
    if ((x+1) % 6) == 0 or ((x-1) % 6) == 0
      i = 0      
      for i in 3..Math.sqrt(x).floor
	if x % i == 0
	  return 0
	end	
      end
      return 1
    else
      return 0	  
    end  
  #else
  #  return 0
  #end
end
p = Array.new()
i = 0
p << 2
p << 3
for i in 5..2000
  p << (i) if ist_prim(i) == 1
end
puts "Primzahlen fertig!"

b = 0
a = 0
n = 0
n_max = 0
prim = 1
prod = 0
for a in -1000..1000
  for b in (1-a)..1000
      if p.index(b) != nil and p.index(1 + a + b) != nil 
	prim = 1
	n = 0
	while prim == 1	  
	  if p.index(n**2 + n*a + b) == nil
	    prim = 0
	  else
	    if n >= n_max
	      puts "n: #{n}, b: #{b}, a: #{a}"
	      prod = a * b
	      n_max = n
	    end
	  end
	  n += 1
	end
      end
  end
end
