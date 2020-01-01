# Replace With Alphabet Position
# Welcome.
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.
# If anything in the text isn't a letter, ignore it and don't return it.
# --- 2019.12.30 created --------------------------
def alphabet_position(text)
  text.split('').reduce([]) {|accu, x| ((x =~ /[[:alpha:]]/) == 0) ? accu << (x.upcase.ord - 64) : accu }.join(' ')
  
  # #===== other sol 1:
  # text.gsub(/[^a-zA-Z]/, '').upcase.bytes.map {|x| x - 64 }.join(' ')

  # #===== other sol 2:
  # text.gsub(/[^a-z]/i, '').chars.map{ |c| c.downcase.ord - 96 }.join(' ')
end

require './test_assert'
Test.assert_equals(alphabet_position("AbC D!"), "1 2 3 4")
Test.assert_equals(alphabet_position("The sunset sets at twelve o' clock."), "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11")
Test.assert_equals(alphabet_position("-.-'"), "")
Test.assert_equals(alphabet_position("$@]uE,$OY}vf9p+o4V(i_=x-{krkF'y6$z/BL]Y#1Jz6u7bZtmXS;-#lZLN1sU_N3>&g'Jv;SBzA->Mq<AR_<;H0AyKl+;xN4&oM0"), "21 5 15 25 22 6 16 15 22 9 24 11 18 11 6 25 26 2 12 25 10 26 21 2 26 20 13 24 19 12 26 12 14 19 21 14 7 10 22 19 2 26 1 13 17 1 18 8 1 25 11 12 24 14 15 13")

puts "-----------"