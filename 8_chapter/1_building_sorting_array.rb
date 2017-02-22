words = []
word = 'begin'

until word == ''
  print 'Enter a word (enter to finish): '
  word = gets.chomp
  unless word == ''
    words.push(word)
  end
end

puts words.sort
