=begin
Find the value of d  1000 for which 1/d contains the longest recurring cycle in its decimal fraction part.
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

def dezimal(x)
  string = ""
  s = 10**((Math.log10(x).floor)+1)  
  gef = 0
  rest = s%x
  s_s = rest
  erg = (s/x).floor  
  string << erg.to_s
  while gef == 0
    s = rest * 10
    erg = (s/x).floor
    string << erg.to_s
    rest = s%x
    if rest == s_s
      gef = 1
    end
  end
  return string
end
i = 0
g = 1000
p = Array.new()
p << 2
p << 3
n = 0
for i in 5..g
  if ist_prim(i) == 1 
    p << i 
    n+=1
  end
end
puts "Primzahlen sind generiert!"
s_max = 0
i_max = 0
for i in 0..n
  
    e = dezimal(p[i])
    s = e.to_s.size-1
    puts "#{p[i]}: #{e} - #{s}"
    if s > s_max
      s_max = s
      i_max  = p[i]
    end
  
end
puts i_max