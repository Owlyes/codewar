# Create Phone Number 2019.12.20

# Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.
#---------------------------------------------------------------------

def createPhoneNumber(numbers)
  # "(#{numbers[0..2].join}) #{numbers[3..5].join}-#{numbers[6..9].join}"

  # "(%d%d%d) %d%d%d-%d%d%d%d" % numbers   # other sol 1
  numbers.join.gsub /(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3'    # other sol 2
end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) #, "(123) 456-7890"
p createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) #, "(111) 111-1111"
p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) #, "(123) 456-7890"
