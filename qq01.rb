def two_sum(nums, target)
  ss = nums.size
  arr = []
  0.upto(ss-2) do |ii|
    (ii + 1).upto(ss - 1) do |jj|
      arr << [ii, jj] if (nums[ii] + nums[jj] == target)
    end
  end
  return arr
end

require './test_assert'
Test.assert_equals(two_sum([3,7,7],10),[[0,1],[0,2]])
Test.assert_equals(two_sum([3,5,99,70],104),[[1,2]])
Test.assert_equals(two_sum([3,5,70],104),[])
Test.assert_equals(two_sum([300,50,70],350),[[0,1]])
puts "---------"