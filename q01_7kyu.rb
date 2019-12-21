# Get the Middle Character

# Best Solution:
def get_middle(s)
  s_size = s.size
  if s_size > 0 && s_size < 1000
    s[(s_size - 1)/2 .. (s_size / 2)]
  else
    "the length of string sould between 0 < str < 1000"
  end

# My Solution: 2019.12.xx
  # s_length = s.length
  
  # if s_length > 0 && s_length < 1000
  #   if s_length.odd?
  #     return s[(s_length - 1) / 2]
  #   else
  #     return s[(s_length / 2) - 1] + s[s_length / 2]
  #   end
  # else
  #   return "the length of string sould between 0 < str < 1000"
  # end
end


puts get_middle("test")#,"es")
puts get_middle("testing")#,"t")
puts get_middle("middle")#,"dd")
puts get_middle("A")#,"A")
puts get_middle("of")#,"of")