=begin
There are exactly ten ways of selecting three from five, 12345:

123, 124, 125, 134, 135, 145, 234, 235, 245, and 345

In combinatorics, we use the notation, 5C3 = 10.

In general,

nCr =	
n!
r!(nr)!
,where r  n, n! = n(n1)...321, and 0! = 1.
It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.

How many, not necessarily distinct, values of  nCr, for 1  n  100, are greater than one-million?
=end

def fak(n)
  if n < 3
    return n
  else
    n * fak(n-1)
  end
end

def nCr(n,k)  
  x = fak(n)/(fak(k)*fak(n-k))  
  return x
end

grenze = 0
start = 22
ende = 23
grenze = 0
anzahl = 0
n,k = 0
for n in 3..100
  grenze = 0
  for k in 1..n-1  
    if nCr(n,k) > 1000000      
      anzahl += 1
    end
  end
end
puts anzahl
