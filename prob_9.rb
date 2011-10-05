=begin
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

a,b,c = 0,0,0

for c in 1..499
  for a in 1..((1000-c)/2)
    b = 1000-a-c
    if (a**2 + b**2) == c**2
      puts "a: " + a.to_s
      puts "b: " + b.to_s
      puts "c: " + c.to_s
      puts (a * b * c).to_s
    end
  end
end
    