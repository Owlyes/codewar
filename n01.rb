require 'byebug'

def merge_arrays(a, b)
  ( a + b ).sort.uniq
end

p merge_arrays([1, 3, 5], [2, 4, 6])
p merge_arrays([2, 4, 8], [2, 4, 6])
# Test.assert_equals(merge_arrays([1, 3, 5], [2, 4, 6]),[1, 2, 3, 4, 5, 6])
# Test.assert_equals(merge_arrays([2, 4, 8], [2, 4, 6]), [2, 4, 6, 8]) 


def how_much_i_love_you(nb_petals)
  
  # if ((nb_petals * 100).to_i == nb_petals * 100) && (nb_petals > 0)
  if (nb_petals.is_a?(Integer)) && (nb_petals > 0)
    key = nb_petals % 6
    if key == 1
      "I love you"
    elsif key == 2
      "mod 2"
    elsif key == 3
      "a lot"
    elsif key == 4
      "mod 4"
    elsif key == 5
      "mod 5"
    elsif key == 0
      "not at all"
    else
      "something error"
    end
  else
    "input is not positive integer"
  end

end

p how_much_i_love_you(7)
p how_much_i_love_you(3)
p how_much_i_love_you(6)
p how_much_i_love_you(4.5)
p how_much_i_love_you(-2)
p how_much_i_love_you(20)


# Test.describe "Basic test" do 
#   Test.assert_equals(how_much_i_love_you(7),"I love you")
#   Test.assert_equals(how_much_i_love_you(3),"a lot")
#   Test.assert_equals(how_much_i_love_you(6),"not at all")
# end