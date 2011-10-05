=begin
The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

How many circular primes are there below one million?
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

def rotiere(x)
  string = x.to_s
  string_neu = ""  
  for i in 0..(string.size-1)
    string_neu << string[i-1]
  end
  return string_neu.to_i  
end

i = 0
summe = 0
x = 0
prim = 0
j = 0
null = 0
for i in 2..1000000
  prim = 0
  for j in 0..i.to_s.size-1
    if i.to_s[j] == "0"
      null = 1
    end
  end
  if null == 0 and ist_prim(i) == 1
    prim = 1
    x = i
    #puts "#{x} ist schonmal prim!"
    for j in 0..i.to_s.size-2   
      if prim == 1
	x = rotiere(x)
	prim = ist_prim(x)
	if prim == 1
	  #puts "#{x} ist prim!"
	else
	  #puts "#{x} ist _nicht_ prim!"
	end
      end
    end
  end
  if prim == 1 
    puts "#{i} ist circular prime!"
    summe += 1
  end
  null = 0
end
puts summe