=begin
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
=end
def permutiere(x,s,n)  
  if s == n-1    
    string = ""
    for i in 0..n
      string << "#{x[i]}"
    end
    #puts string
    $o << string.to_i
  else
    i = 0    
    for i in s..n
      tmp = x[i]
      x[i] = x[s]
      x[s] = tmp      
      permutiere(x, s+1, n)
      x[s] = x[i]
      x[i] = tmp
    end
  end
end
 
$o = Array.new()
a = Array.new()
i = 0
for i in 0..9
  a << i
end

permutiere(a,0,10)
u = Array.new()
u = $o.uniq!.sort
puts u[999999]