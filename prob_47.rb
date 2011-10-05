=begin
The first two consecutive numbers to have two distinct prime factors are:

14 = 2  7
15 = 3  5

The first three consecutive numbers to have three distinct prime factors are:

644 = 2²  7  23
645 = 3  5  43
646 = 2  17  19.

Find the first four consecutive integers to have four distinct primes factors. What is the first of these numbers?
=end
def ist_prim(x)
  if x % 2 != 0
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
  else
    return 0
  end
end

def faktoren(x)
  s = x
  a = Array.new()
  ende = 0
  i = 0
  while ende == 0
    if $p[i]*2 < s
      if x % $p[i] == 0
	a << $p[i]	
	x /= $p[i]
      else
	i += 1
      end    
    else
      ende = 1
    end
  end
  return a
end

i = 0
n = 0
$p = Array.new()
$p << 2
$p << 3
f = Array.new()
for i in 5..100
  $p << i if ist_prim(i) == 1
  n += 1
end
gleich = 0
z = 0
for i in 0..100-4
  z = 0
  for j in 0..4    
    f[j] = faktoren(i+j)
    if j > 0
      d = f[j]&f[j-1]
      if d != nil
	puts d[0]
      end
    end
  end
  
end


