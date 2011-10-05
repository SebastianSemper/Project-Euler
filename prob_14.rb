=begin
The following iterative sequence is defined for the set of positive integers:

n  n/2 (n is even)
n  3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?
=end
$schritte
$schritte=0

def spiele(x)
  $schritte += 1
  return if x == 1
  if x % 2 == 0
    spiele(x/2)
  else
    spiele(3*x+1)
  end
end

schritte_max = 0
i = 0
max_i = 0
for i in 1..1000000
  spiele(i)
  if $schritte > schritte_max
    schritte_max = $schritte
    max_i = i    
  end
  $schritte = 0
end
puts schritte_max.to_s
puts "I: " + max_i.to_s
