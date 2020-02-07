# Range Extraction
# A format for expressing an ordered list of integers is to use a comma separated list of either
# individual integers or a range of integers denoted by the starting integer separated from the end integer in the range by a dash, '-'. The range includes all integers in the interval including both endpoints. It is not considered a range unless it spans at least 3 numbers. For example ("12, 13, 15-17")
# Complete the solution so that it takes a list of integers in increasing order and returns a correctly formatted string in the range format.

def solution(list)
  out_list = []

  ii = 0
  loop do
    a = list[ii]
    loop do
      ii += 1
      break if list[ii] == nil || ( (list[ii-1]) != (list[ii] - 1) )
    end
    b = list[ii-1]
    out_list << ( (a == b) ? "#{a}" : ( (a == b - 1) ? "#{a},#{b}" : "#{a}-#{b}" ))
    break if list[ii] == nil
  end

  return out_list.join(',')
end


require './test_assert'
Test.assert_equals(solution([-6,-5,3]), "-6,-5,3")
Test.assert_equals(solution([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]), "-6,-3-1,3-5,7-11,14,15,17-20")
puts "--------------"


