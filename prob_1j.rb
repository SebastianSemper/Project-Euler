=begin
Find the sum of all the multiples of 3 or 5 below 1000.
paarweise werden die vielfachen addiert wobei bei den vielfachen von 3 
jedes 5te ausgelassen wird um nichts doppelt zu addieren.
=end

a=0
b=0
c=0
d=0
e=0
until b>999
a=e+1
b=a*3
c=b+d
d=c
e=a
puts d
end
f=c-a*3
puts d
a=0
b=0
c=0
d=0
e=0
until b>999
a=e+1
b=a*5
c=b+d
d=c
e=a
puts d
end
g=c-a*5
puts f
puts g
a=0
b=0
c=0
d=0
e=0
until b>999
a=e+1
b=a*15
c=b+d
d=c
e=a
puts d
end
h=c-a*15
puts f
puts g
puts h
i=f+g-h
puts i