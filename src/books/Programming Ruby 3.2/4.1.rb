def words_from_string(string)
  return string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)
  words.each { |word| frequencies[word] += 1 }
  return counts.sort_by { |word, count| -count }
end
