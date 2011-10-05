=begin
If p is the perimeter of a right angle triangle with integral length sides, {a,b,c}, there are exactly three solutions for p = 120.

{20,48,52}, {24,45,51}, {30,40,50}

For which value of p  1000, is the number of solutions maximised?
=end

a,b,c,p,p_max,s,s_max = 0,0,0,0,0,0,0
p = 1000
for p in 10..1000
  s=0
  for c in 1..((p/2)-1)
    for a in 1..((p-c)/2)
      b = p-a-c
      s += 1 if (a**2 + b**2 == c**2)
    end
  end
  if s > s_max
    s_max = s
    p_max = p
  end
end
puts p_max