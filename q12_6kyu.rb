# Array.diff
# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
# It should remove all values from list a, which are present in list b.
# --- 2019.12.30 created --------------------------
def array_diff(a, b)
  a - b
end

require './test_assert'
# Test.describe("Basic Tests") do
  Test.assert_equals(array_diff([1,2], [1]), [2]) #,  "a was [1,2], b was [1], expected [2]")
  Test.assert_equals(array_diff([1,2,2], [1]), [2,2]) #,  "a was [1,2,2], b was [1], expected [2,2]")
  Test.assert_equals(array_diff([1,2,2], [2]), [1]) #,  "a was [1,2,2], b was [2], expected [1]")
  Test.assert_equals(array_diff([1,2,2], []), [1,2,2]) #,  "a was [1,2,2], b was [], expected [1,2,2]")
  Test.assert_equals(array_diff([], [1,2]), []) #,  "a was [], b was [1,2], expected []")
  Test.assert_equals(array_diff([-6, -9, -18, 18, -1, 5, 3, 18, -9],[7, -11, 17, -15, -19, -3, 3, 11, 18, -11, 2, -11, 8]),[-6, -9, -18, -1, 5, -9])
  Test.assert_equals(array_diff([5, -6, -4],[11, -8, 8]),[5, -6, -4])
  # end

puts "-----------"
