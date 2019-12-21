# Welcome. In this kata, you are asked to square every digit of a number.
# For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
# Note: The function accepts an integer and returns an integer

# Best Solution:
def square_digits_2 num
  num.to_s.chars.map{|x| x.to_i**2}.join.to_i
end

# My Solution: 2019.12.18
def square_digits num
  if num.is_a?(Integer)
    num2str = num.to_s
    str = ""
    num2str.size.times do |i|
      str += (num2str[i].to_i ** 2).to_s
    end
    return str.to_i
  else
    return "Input Error"
  end
end



p square_digits(3212) #9414)
p square_digits(2112) #4114)
p square_digits(1111) #1111)
p square_digits(1234321) #14916941)
p square_digits(0) #0)
p square_digits("33") #0)

# Test.assert_equals(square_digits(3212), 9414)
# Test.assert_equals(square_digits(2112), 4114)
# Test.assert_equals(square_digits(1111), 1111)
# Test.assert_equals(square_digits(1234321), 14916941)
# Test.assert_equals(square_digits(0), 0)