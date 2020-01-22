# IQ Test
# Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.
# ! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)
##Examples :
# iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even
# iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

# --- 2020.01.22 created --------------------------
def iq_test(numbers)
  arr_num = numbers.split(' ').map{ |n| n.to_i }
  pick_num = arr_num.partition(&:odd?).select{|x| x.size == 1}.first.first
  arr_num.map { |x| arr_num.index(x) }.select {|n| n == arr_num.index(pick_num)}.first + 1


  # # other solution:
  # nums = numbers.split.map(&:to_i).map(&:even?)
  # nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end


require './test_assert'
Test.assert_equals(iq_test("2 4 7 8 10"),3)
Test.assert_equals(iq_test("1 2 2"), 1)
puts "--------------"
