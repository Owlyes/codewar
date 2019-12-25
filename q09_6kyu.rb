# Find The Parity Outlier
#You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
# --- 2019.12.22 created ---------------------------------------------------------------------
def find_outlier(integers)
  odd_array = integers.select{|x| x.odd?}
  even_array = integers.select{|x| x.even?}
  odd_array.length < even_array.length ? odd_array.join.to_i : even_array.join.to_i

  # integers.partition(&:odd?).find(&:one?).first # best solution
end

require './test_assert'
Test.assert_equals(find_outlier([0, 1, 2]), 1)
Test.assert_equals(find_outlier([1, 2, 3]), 2)
Test.assert_equals(find_outlier([2,6,8,10,3]), 3)
Test.assert_equals(find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]), 11)
puts "--------------"
