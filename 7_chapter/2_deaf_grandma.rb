answer = ''

while answer != 'BYE'
  print 'Sonny: '
  answer = gets.chomp

  print 'Grandma: '
  if answer == 'BYE'
    puts 'BYE SONNY'
  elsif answer == answer.upcase
    year = rand(1930..1950)
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end
