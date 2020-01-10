# Format a string of names like 'Bart, Lisa & Maggie'.
# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
# Example:
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) # returns 'Bart, Lisa & Maggie'
# list([ {name: 'Bart'}, {name: 'Lisa'} ]) # returns 'Bart & Lisa'
# list([ {name: 'Bart'} ]) # returns 'Bart'
# list([]) # returns ''

# --- 2020.01.07 created --------------------------
def list names
  str = Array.new(names.size)
  case names.size
    when 0
      str = []
    when 1
      str = ['']
    else
      str[0..(str.size-1)] = (', @' * (str.size - 2)).split('@') + [' & ', '']
  end
  names.zip(str).reduce('') {|arr, x| arr << (x[0][:name] + x[1])}


  # # other solution:
  # names.map(&:values).join(', ').sub(/, (\w+)$/, ' & \1')
end

require './test_assert'
Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]), 'Bart, Lisa, Maggie, Homer & Marge')
Test.assert_equals(list([{name: 'Bart'},{name: 'Lisa'}]), 'Bart & Lisa')
Test.assert_equals(list([{name: 'Bart'}]), 'Bart')
Test.assert_equals(list([]), '')
puts "--------------"