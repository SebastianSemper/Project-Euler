=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end
def palindromire(x)
  string = x.to_s
  return (string + string[-1] + string[-2] + string[-3] + string[-4]).to_i
end

i = 0
j = 0
palindrom = 0
palindrom_max = 0
for i in 1000..9999
  palindrom = palindromire(i)
  for j in 1000..9999
    if j % 11 == 0
      if palindrom % j == 0 
	if (palindrom/j).to_s.size == 4
	  palindrom_max = palindrom
	end
      end
    end
  end
  #puts palindrom.to_s
end
puts palindrom_max.to_s




