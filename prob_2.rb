=begin
Find the sum of all the even-valued terms in the Fibonacci sequence which do not exceed four million.
fibonacci erzeugen und alle geraden addieren.
=end
gem_1,gem_2,glied,summe = 0,0,0,0
while glied < 4000000
  glied = gem_1 + gem_2
  gem_2 = gem_1
  gem_1 = glied
  summe += glied if (glied % 2) == 0 
end
puts summe.to_s