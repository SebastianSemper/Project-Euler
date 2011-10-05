=begin
The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

Find the sum of the only eleven primes that are both truncatable from left to right and right to left.

NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
=end
def ist_prim(x)
  if x % 2 != 0
    if x > 3
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
    else
      if x > 1
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
  else
    return 0
  end
end

def schnippel_prim(x)
  i = 0
  string = x.to_s
  size = string.size
  for i in 1..(size-1)
    return 0 if ist_prim(string[0..(size-1-i)].to_i) == 0      
    return 0 if ist_prim(string[-(size-i)..-1].to_i) == 0
  end
  return 1
end

i = 9
a = 0
s = 0
#for i in 1000..2000
while a < 10 do  
  i += 1
  if ist_prim(i*2+1) == 1
    #puts "#{i*2+1} ist Prim!"
    if schnippel_prim(i*2+1) == 1
      a += 1
      puts "#{i*2+1} ist auch die #{a}. Schnippelprimzahl!"
      s += i*2+1
    end
  end
end