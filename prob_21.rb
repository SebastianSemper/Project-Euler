=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end
def teilersumme(x)
  summe = 0
  i = 0
  for i in 1..x
    if x % i == 0
      summe += i
    end
  end
  summe -= x
  #puts "Teilersumme von #{x} ist #{summe}"
  return summe
end

i = 0
n = 10000
for i in 1..n
  zw_summe = teilersumme(i)
  if zw_summe < n
    if teilersumme(zw_summe) == i
      puts "#{i} ist befreundet mit #{zw_summe}"
    end
  end
end