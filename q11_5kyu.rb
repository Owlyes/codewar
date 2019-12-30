# Simple Pig Latin
# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
# --- 2019.12.29 created --------------------------
def pig_it text
  text.split(' ').map { |w| 
    # ((w.slice(0) =~ /[^A-Za-z]/) != 0) ? has_ay = "ay" : has_ay = ""
    (w.slice(0) =~ /[[:alpha:]]/) ? has_ay = "ay" : has_ay = ""
    w.slice(1..(w.size-1)) + w.slice(0) + has_ay
  }.join(' ')

  # #===== other sol 1:
  # text.gsub(/(\w)(\w+)*/, '\2\1ay')
  
  # #===== other sol 2:
  # text.split.map{|word| word =~ /\w/ ? "#{word[1..-1]}#{word[0]}ay" : word}.join(" ")

end


require './test_assert'
Test.assert_equals(pig_it('Pig latin is cool'),'igPay atinlay siay oolcay')
Test.assert_equals(pig_it('This is my string'),'hisTay siay ymay tringsay')
Test.assert_equals(pig_it('Hello world !'),'elloHay orldway !')
puts "-----------------"