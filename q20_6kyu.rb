# Unique In Order
# Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.
# For example:
# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

# --- 2020.01.20 created --------------------------
def unique_in_order(iterable)
  iterable.is_a?(String) ? input_arr = iterable.chars : input_arr = iterable
  out_arr = []
  out_arr << input_arr[0]
  1.upto(input_arr.size - 1) do |i|
    out_arr << input_arr[i] if input_arr[i-1] != input_arr[i]
  end
  out_arr = [] if (iterable == [] || iterable == '')
  return out_arr


  # # other solution 1:
  # (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)


  # # other solution 2:
  # it_array= []
  # iterable.length.times do |x|
  #   it_array << iterable[x] if iterable[x] != iterable[x+1]
  # end
  # it_array
end


require './test_assert'
Test.assert_equals(unique_in_order('AAAABBBCCDAABBB'), ['A','B','C','D','A','B'])
Test.assert_equals(unique_in_order('ABBCcAD'), ['A', 'B', 'C', 'c', 'A', 'D'])
Test.assert_equals(unique_in_order([1,2,2,3,3]), [1,2,3])
Test.assert_equals(unique_in_order(["A"]), ['A'])
Test.assert_equals(unique_in_order('a'), ['a'])
Test.assert_equals(unique_in_order([]), [])
Test.assert_equals(unique_in_order(''), [])
puts "--------------"