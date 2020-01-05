# String incrementer
# Your job is to write a function which increments a string, to create a new string.
# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.

# --- 2020.01.05 created --------------------------
def increment_string(input)

  # if input[/(\w*)(\D)(\d+)$/,1].nil?
  #   if input[/(\w*)(\d+)$/].nil?
  #     input + 1.to_s
  #   else
  #     '0' * [input.size - (input.to_i + 1).to_s.size,0].max + (input.to_i + 1).to_s
  #   end
  # else
  #   num = input[/(\w*)(\D)(\d+)$/,3]
  #   input[/(\w*)(\D)(\d+)$/, 1] + input[/(\w*)(\D)(\d+)$/, 2] + '0' * [num.size - (num.to_i + 1).to_s.size, 0].max + (num.to_i + 1).to_s
  # end

  # simplified
  if input[/(\w*)(\D)(\d+)$/].nil?
    input[/(\w*)(\d+)$/].nil? ? input + "1" : input.next
  else
    $1 + $2 + $3.next
  end


  # # other solution:
  # input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }

end


require './test_assert'
Test.assert_equals(increment_string("foo"), "foo1")
Test.assert_equals(increment_string("foobar001"), "foobar002")
Test.assert_equals(increment_string("foobar1"), "foobar2")
Test.assert_equals(increment_string("foobar00"), "foobar01")
Test.assert_equals(increment_string("foobar99"), "foobar100")
Test.assert_equals(increment_string("f00bar"), "f00bar1")
Test.assert_equals(increment_string(""), "1")
Test.assert_equals(increment_string("1"), "2")
Test.assert_equals(increment_string("009"), "010")
puts "---------------"