=begin
What is the first term in the Fibonacci sequence to contain 1000 digits?
=end

s,a,b = 0,1,0
stellen = 0
grenze = 1000
index = 1
while stellen <= grenze do
  s = a + b
  a,b = b,s
  puts s.to_s + " mit " + index.to_s
  stellen = (s.to_s).size
  break if stellen == grenze
  index += 1
end
puts