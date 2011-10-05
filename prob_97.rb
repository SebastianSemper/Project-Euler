=begin
The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form 269725931; it contains exactly 2,098,960 digits. Subsequently other Mersenne primes, of the form 2p1, have been found which contain more digits.

However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 2843327830457+1.

Find the last ten digits of this prime number.
(28433 * 2**7830457)+1
=end

n = 7830457
i = 0
e = 2**20
l = 0
s = 11
for i in 21..n
  #puts e
  l = e.to_s.size
  if l < s
    e = (e.to_s[-l..-1]).to_i * 2
  else
    e = (e.to_s[-s..-1]).to_i * 2
  end
end
puts (e*28433)+1
#puts 2**n

