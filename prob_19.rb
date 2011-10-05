=begin
You are given the following information, but you may prefer to do some research for yourself.

1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end

month = Array.new
month = [31,28,31,30,31,30,31,31,30,31,30,31]
year = 1900
#montag der 1.1.1900 = tag 1
tag = 0
monat = 0
wochentag = 0
sonntag = 0
for year in 1900..2000
  if year % 4 == 0
    month[1] = 29
    if year % 100 == 0
      if year % 400 == 0
	month[1] = 29
      else
	month[1] = 28
      end
    end        
  else
    month[1] = 28
  end
  for monat in 0..11
    for wochentag in 1..month[monat]
	tag += 1	
	if tag % 7 == 0 and year > 1900 and wochentag == 1
	  sonntag += 1
	end	  
    end
  end
end
puts sonntag