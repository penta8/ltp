# Words (array) => Words
def dic_sort(words, sorted = [])
  return words if words.empty?
  copy_words = Array.new(words)
  minor = minor_word(copy_words)
  sorted.push(words.delete_at(words.find_index(minor)))
  words.empty? ? sorted : dic_sort(words, sorted)
end

# Words (array) => String
def minor_word(words)
  return words[0] if words.empty? || words.length == 1
  if words[0].downcase < words[1].downcase
    minor = words[0]
    major = words[1]
  else
    minor = words[1]
    major = words[0]
  end

  if words.length == 2
    minor
  else
    words.delete_at(words.find_index(major))
    minor_word(words)
  end
end
