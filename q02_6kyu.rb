# Your order, please
def order(words)
  words_array = []
  words_order = []
  ws = 0;  pre_i = 0
  words.size.times do |i|
    if words[i] == " "
      words_array[ws] = words[pre_i .. (i - 1)]
      pre_i = i + 1; ws += 1
    elsif i == words.size - 1
      words_array[ws] = words[pre_i .. i]
    else
    end
    if (words[i] =~ /\d/).is_a?(Numeric) 
      words_order[ws] = words[i]
    end
  end

  words_hash = [words_order, words_array].transpose.to_h
  ordered_words = ""
  words_hash.size.times do |j|
    (j == words_hash.size - 1) ? space = "" : space = "_"
    ordered_words = ordered_words + words_hash[(j + 1).to_s] + space
  end

  return ordered_words
end


puts order("3a b4ook thi1s i2s !!5")