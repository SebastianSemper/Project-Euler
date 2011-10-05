=begin
Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
siehe prob_13.res
=end

=begin
class Array2D
  def initialize(width, height)
    @data = Array.new(width) { Array.new(height) }
  end
  def [](x, y)
    @data[x][y]
  end
  def []=(x, y, value)
    @data[x][y] = value
  end
end
=end

file = File.new("prob_18.res", "r")
#file = File.new("prob_18.res2", "r")
linie = Array.new
i = 0
j = 0

while (line = file.gets)
  linie[i] = line  
  i += 1  
end
file.close

n = i-1
summe = 0
zeile = Array.new()
zeile_sortiert = Array.new()
zeile_max = 0
zeile_max_j = 0
max = Array.new()
for i in 0..n
  zeile[i] = Array.new()
  zeile_max = 0
  for j in 0..i
    zeile[i] << (linie[i][j*3..j*3+1]).to_i
    #zeile[i] << (linie[i][j*2]).to_i
    if zeile[i][j] > zeile_max
      zeile_max_j = j 
      zeile_max = zeile[i][j]
    end    
  end
  zeile_sortiert[i] = zeile[i].sort
  max[i] = Array.new()
  max[i][0] = zeile[i].sort[-1]		#Wert
  max[i][1] = zeile_max_j		#Position
  max[i][2] = -1			#stelle im sortierten array
  puts "Zeile #{i+1}: #{max[i][0]} an Pos. #{max[i][1]+1}" 
end

30.times{
#weg anpassen
for i in 1..n
  summe = zeile[0][0]
  if (max[i-1][1]-max[i][1])**2 > 1
    if max[i][2] > -i
      max[i][0] = zeile_sortiert[i][max[i][2]-1]
      max[i][1] = zeile[i].index(zeile_sortiert[i][max[i][2]-1])
      max[i][2] -= 1
    else
      max[i][0] = zeile_sortiert[i][max[i][2]+1]
      max[i][1] = zeile[i].index(zeile_sortiert[i][max[i][2]+1])
      max[i][2] += 1
    end    
  end
  summe += max[i][0]
end
}
puts summe


