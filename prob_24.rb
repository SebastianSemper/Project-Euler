=begin
A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
=end
class String
   def perm
       return [self] if self.length < 2
       ret = []
    
       0.upto(self.length - 1) do |n|
          #rest = self.split('')                
          rest = self.split(//u)            # for UTF-8 encoded strings
          picked = rest.delete_at(n)
          rest.join.perm.each { |x| ret << picked + x }
       end

       ret
   end
end
a = Array.new
a = "0123456789".perm
s = a.sort
puts s[999999]