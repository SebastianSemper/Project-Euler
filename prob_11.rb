=begin
What is the greatest product of four adjacent numbers in any direction (up, down, left, right, or diagonally) in the 2020 grid?
=end

file = File.new("prob_11.res", "r")
zelle = Array.new
i = 0
j = 0
linie = ""
zeile = ""
while (linie = file.gets)
  zeile = linie
  zelle[i] = Array.new
  for j in 0..19
    zelle[i][j] = (zeile[3*j..(3*j+1)]).to_i
  end
  i += 1  
end

prod,max_prod = 0,0
for i in 0..19
  for j in 0..19
    if j < 17
      prod = zelle[i][j] * zelle[i][j+1] * zelle[i][j+2] * zelle[i][j+3]
      max_prod = prod if prod > max_prod
    end
    if i < 17
      prod = zelle[i][j] * zelle[i+1][j] * zelle[i+2][j] * zelle[i+3][j]
      max_prod = prod if prod > max_prod
    end
    if i < 17 and j < 17
      prod = zelle[i][j] * zelle[i+1][j+1] * zelle[i+2][j+2] * zelle[i+3][j+3]
      max_prod = prod if prod > max_prod
    end
    if i < 17 and j > 2
      prod = zelle[i][j] * zelle[i+1][j-1] * zelle[i+2][j-2] * zelle[i+3][j-3]
      max_prod = prod if prod > max_prod
    end
  end
end
puts max_prod