=begin
A googol (10100) is a massive number: one followed by one-hundred zeros; 100100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, ab, where a, b  100, what is the maximum digital sum?
=end

def stellen_summe(x)
  s = 0
  l = x.to_s.size
  0.upto(l-1){|p|
              s += x.to_s[p].to_i
              }
  return s
end

summe, summe_max = 0, 0

1.upto(100){|a|
            1.upto(100){|b|
                        summe = stellen_summe(a**b)
                        summe_max = summe if stellen_summe(a**b) > summe_max
                        }
           }
puts summe_max