=begin
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
SCHEISSE!
=end

einer = Array.new
einer[0] = 0
einer[1] = 3
einer[2] = 3
einer[3] = 5
einer[4] = 4
einer[5] = 4
einer[6] = 3
einer[7] = 5
einer[8] = 5
einer[9] = 4
zehner = Array.new
zehner[0] = 0
zehner[1] = 0
zehner[2] = 6
zehner[3] = 6
zehner[4] = 5
zehner[5] = 5
zehner[6] = 5
zehner[7] = 7
zehner[8] = 6
zehner[9] = 6
i = 0
j = 0
e,z,h = 0,0,0
buchstaben = 0
stellen = 0
zahl = 
for i in 1..999
  zahl = 0
  string = i.to_s
  stellen = string.size
  for j in 0..(2-stellen)
    string.insert(0,"0")
  end
  e = string[-1]
  z = string[-2]
  h = string[-3]  
  zahl += einer[h.to_i]
  if i % 100 != 0
    zahl += 3 if i > 100 #and
  end
  zahl += 7 if i > 99#hundred
  if z != "1"
    zahl += einer[e.to_i] + zehner[z.to_i]
  else
    zahl += 3 if e == "0" #ten
    zahl += 6 if e == "1" #eleven
    zahl += 6 if e == "2" #twelve
    zahl += 8 if e == "3" #thirteen
    zahl += 7 if e == "5" #fifteen
    zahl += 8 if e == "4" #fourteen
    zahl += 7 if e == "6" #sixteen
    zahl += 9 if e == "7" #seventeen
    zahl += 8 if e == "8" #eighteen
    zahl += 8 if e == "9" #nineteen
       
  end
  puts "E: " + e + " - Z: " + z + " - H: " + h + " mit " + zahl.to_s
  buchstaben += zahl
end
puts "Buchstaben: " + (buchstaben+("onethousand".size)).to_s
#puts "Buchstaben: " + buchstaben.to_s