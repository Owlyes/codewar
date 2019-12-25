# 6 kyu -- Is a number prime?
# Define a function that takes an integer argument and returns logical value true or false depending on if the integer is a prime.
# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
# --- 2019.12.25 created --------------------------
def isPrime(num)
  
  prime_test = 3
  if num.odd? && num != 1 && num.is_a?(Integer)
    while (num % prime_test != 0) && prime_test < (num / 5*7*11 )  do prime_test += 2 end
    prime_test = num if (num % prime_test != 0) && prime_test < num
  else
    prime_test = num if num == 2
  end
  return (num == prime_test) ? true : false
  

  # #===== other sol 1:
  # require 'prime'
  # num.prime?
  
  # #===== other sol 2:
  # num > 1 && (1..num/2).select {|n| num % n == 0}.size == 1 ? true : false
  
  # #===== other sol 3:
  # return false if num < 2
  # (2...num).to_a.select{|x| num%x == 0}.compact.empty?
end



require './test_assert'
  # it "Should return false for non-prime numbers." do
      Test.assert_equals(isPrime(4), false)
      Test.assert_equals(isPrime(100), false)
      Test.assert_equals(isPrime(999), false)
      Test.assert_equals(isPrime(958297), false)
      Test.assert_equals(isPrime(-7), false)
  # end
  
  # it "Should return true for prime numbers." do
      Test.assert_equals(isPrime(2), true)
      Test.assert_equals(isPrime(3), true)
      Test.assert_equals(isPrime(5), true)
      Test.assert_equals(isPrime(457), true)
      Test.assert_equals(isPrime(39229), true)
  # end
# end

puts "-------------"