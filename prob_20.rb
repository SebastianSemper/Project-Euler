=begin
n! means n  (n  1)  ...  3  2  1

Find the sum of the digits in the number 100!
=end

def fak(n)
  if n < 3
    return n
  else
    n * fak(n-1)
  end
end

string = fak(100).to_s
laenge = string.size
i = 0
summe = 0
for i in 0..(laenge)
  summe += string[i].to_i
end
puts summe.to_s


   
