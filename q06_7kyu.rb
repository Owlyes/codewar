# Beginner Series #3 Sum of Numbers  -- 2019.12.20

# Given two integers a and b, which can be positive or negative, find the sum of all the numbers between including them too and return it. If the two numbers are equal return a or b.
# Note: a and b are not ordered!
#---------------------------------------------------------------------

def get_sum(a,b)
  (a == b) ? a : ((a < b) ? (a..b).sum : (b..a).sum)
  # (a < b) ? (a..b).reduce(:+) : (b..a).reduce(:+)
  # (a + b) / 2.0 * ((a - b).abs + 1)
end

p get_sum(0,1) #,1)
p get_sum(0,-1) #,-1)
p get_sum(1,2) #,3)
p get_sum(5,-1) #,14)
p get_sum(5,5) #,5)