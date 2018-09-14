
def words(word_string)
  word_array = word_string.split(" ")
  word_hash = {}

  word_array.each do |word|
    if !word_hash.keys.include?(word)
      word_hash[word] = 1
    else
      word_hash[word] += 1
    end
  end

  return word_hash
end
