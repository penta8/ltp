def sort(words)
  sorted = []
  until words.empty?
    minor = words[0]
    words.each do |w|
      if w < minor
        minor = w
      end
    end
    sorted.push(minor)
    words.delete_at(words.find_index(minor))
  end
  sorted
end
