=begin
The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.

Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.

(Please note that the palindromic number, in either base, may not include leading zeros.)
=end
def binary(x)
  string = ""
  obergrenze = (Math.log10(x)/Math.log10(2)).floor
  obergrenze.downto(0) {|i|
                        if 2**i <= x
			  string << "1"
			  x -= 2**i
			else
			  string << "0"
			end                        
                        }
  return string.to_i
end
def palindrom(x)
  laenge = (x.to_s.length/2).floor
  string = x.to_s
  laenge.downto(0){|i|
                   if string[i] != string[-(i+1)]
		    return 0
                  end
                   }
  return 1
end

summe = 0
i = 0
bin = 0
for i in 1..1000000
  if i % 2 != 0
    bin = binary(i)
    if palindrom(i) == 1 and palindrom(bin) == 1
      puts "#{i} und #{bin} sind Palindrome!"
      summe += i
    end
  end
end
puts summe
