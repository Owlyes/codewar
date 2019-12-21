def anagrams(word, words)

  output_wds = []; word_array = []
  word.size.times do |w|
    word_array << word[w]
  end
  word_array.sort!
  
  words_array = []
  words.size.times do |w|
    words_array[w] = []
    words[w].size.times do |u|
      words_array[w] << words[w][u]
    end
    words_array[w].sort!
    if words_array[w] == word_array
      output_wds << words[w]
    end
  end

  return output_wds

end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])  #['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) #['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) #[]