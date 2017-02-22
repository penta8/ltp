bottles = 99

while bottles > 0
  noun = bottles > 1 ? 'bottles' : 'bottle'

  puts bottles.to_s + ' ' + noun + ' of beer on the wall ' + bottles.to_s + ' ' + noun + ' of beer'
  bottles -= 1
  noun = bottles > 1 ? 'bottles' : 'bottle'
  print 'Take one down and pass it around, '
  if bottles > 0
    puts bottles.to_s + ' ' + noun + ' of beer on the wall.'
  else
    puts 'no more bottles of beer on the wall.'
  end
  puts
end

puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
