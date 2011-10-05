=begin
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938  53 = 49714.

What is the total of all the name scores in the file?
=end



namen = File.new("prob_42.res", "r").gets.gsub!("\"","").split(",")

stelle,summe,zw_e = 0,0,0

nummern = Array.new()
for stelle in 0..100
  nummern << ((stelle*(stelle+1))/2)
end

namen.each{|name|
           zw_e = 0	
          
           name.each_byte do |c|
	     zw_e += (c-64)
	      
	   end
          if nummern.index(zw_e) != nil
		summe+=1
	      end
          
           }
puts summe
