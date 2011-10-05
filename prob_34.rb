=begin
145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

Find the sum of all numbers which are equal to the sum of the factorial of their digits.

Note: as 1! = 1 and 2! = 2 are not sums they are not included.
=end
def fak(n)
  if n < 3
    return n
  else
    n * fak(n-1)
  end
end

def fak_sum(x)  
  summe = 0
  l = x.to_s.size
  for i in 0..(l-1)
    y = x.to_s[i].to_i
    summe += y*(10**(l-i-1) - fak(y-1))
  end
  return summe
end

a = Array.new()
for i in 3..100000
    if fak_sum(i) == 1 
      puts i      
    end 
end
