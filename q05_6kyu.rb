# Given an array, find the integer that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  # my sol @2019.12.19
  # seq.uniq.reduce([]){|x,i| x << ( seq.count(i).odd? ? i : [] )}.join.to_i
  
  # # best sol1
  # seq.detect { |n| seq.count(n).odd? }

  # # best sol2
  seq.reduce(:^)

end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) #, 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) #, -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) #, 5
p find_it([10]) #, 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) #, 10
p "===================="