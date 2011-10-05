=begin
Starting in the top left corner of a 22 grid, there are 6 routes (without backtracking) to the bottom right corner.


How many routes are there through a 2020 grid?


=end
n = 2
puts ((2**n)-1)*(2**(n-1))
