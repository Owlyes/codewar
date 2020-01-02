# Greed is Good

# Greed is a dice game played with five six-sided dice. Your mission, should you choose to accept it, is to score a throw according to these rules. You will always be given an array with five six-sided dice values.
#  Three 1's => 1000 points
#  Three 6's =>  600 points
#  Three 5's =>  500 points
#  Three 4's =>  400 points
#  Three 3's =>  300 points
#  Three 2's =>  200 points
#  One   1   =>  100 points
#  One   5   =>   50 point

# A single die can only be counted once in each roll. For example, a "5" can only count as part of a triplet (contributing to the 500 points) or as a single 50 points, but not both in the same roll.
# Example scoring
#  Throw       Score
#  ---------   ------------------
#  5 1 3 4 1   50 + 2 * 100 = 250
#  1 1 1 3 1   1000 + 100 = 1100
#  2 4 4 5 4   400 + 50 = 450
# In some languages, it is possible to mutate the input to the function. This is something that you should never do. If you mutate the input, you will not be able to pass all the tests.

# --- 2020.01.02 created --------------------------
def score( dice )
  score_hash = {
    /111/ => 1000 - 200, /666/ => 600, /555/ => 500 - 100, /444/ => 400, /333/ => 300, /222/ => 200, 
    /11/ => 100, /1/ => 100, /1{4}/ => 100, /1{5}/ => 100,
    /55/ => 50,  /5/ => 50, /5{4}/ => 50, /5{5}/ => 50}
  q = 0
  score_hash.each {|key, value| q += value if key =~ dice.sort.join}
  return q


  # #===== other sol 1:
  # dice.sort.join.gsub(/(\d)\1\1|(1|5)/).inject(0) do |sum, num|
  #   sum + ($1.to_i * 100 + $2.to_i * 10 ) * (num[0] == '1' ? 10 : 1)
  # end

  # #===== other sol 2:
  # score_hash = {'111' => 1000, '666' => 600, '555' => 500, '444' => 400, '333' => 300, '222' => 200, '1' => 100, '5' => 50}
  # score_hash.values_at(*dice.sort.join.scan(/((?:(\d)\2{2})|1|5)/).map(&:first)).reduce(&:+) || 0

end


require './test_assert'
Test.assert_equals(score( [2, 3, 4, 6, 2] ),0)
Test.assert_equals(score( [2, 2, 2, 3, 3] ),200)
Test.assert_equals(score( [1, 4, 1, 1, 4] ),1000)
Test.assert_equals(score( [1, 4, 3, 2, 4] ),100)
Test.assert_equals(score( [1, 4, 1, 2, 4] ),200)
Test.assert_equals(score( [5, 1, 3, 4, 1] ),250)
Test.assert_equals(score( [1, 4, 1, 1, 1] ),1100)
Test.assert_equals(score( [2, 4, 4, 5, 4] ),450)
Test.assert_equals(score( [1, 2, 3, 4, 4] ),100)
Test.assert_equals(score( [1, 1, 3, 4, 4] ),200)
Test.assert_equals(score( [1, 1, 1, 4, 4] ),1000)
Test.assert_equals(score( [1, 1, 1, 1, 4] ),1100)
Test.assert_equals(score( [1, 1, 1, 1, 1] ),1200)
Test.assert_equals(score( [5, 2, 3, 4, 4] ),50)
Test.assert_equals(score( [5, 5, 3, 4, 4] ),100)
Test.assert_equals(score( [5, 5, 5, 4, 4] ),500)
Test.assert_equals(score( [5, 5, 5, 5, 4] ),550)
Test.assert_equals(score( [5, 5, 5, 5, 5] ),600)
puts "-----------------"