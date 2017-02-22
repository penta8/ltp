lengths = [40, 12, 3, 21]
contents = ['Getting Started', 'Numbers', 'Letters']
pages = [1, 9, 13]

puts 'Table of Contents'.center(lengths[0])

contents.each_with_index do |cont, index|
  print "Chapter #{index + 1}".ljust(lengths[1]) + cont.ljust(lengths[3])
  puts 'page' + pages[index].to_s.rjust(lengths[2])
end
