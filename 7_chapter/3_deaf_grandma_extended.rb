answer = ''
byes = 0

while byes != 3
  print 'Sonny: '
  answer = gets.chomp

  print 'Grandma: '
  if answer == answer.upcase
    year = rand(1930..1950)
    if answer == 'BYE'
      byes += 1
      if byes == 3
        puts 'BYE SONNY!'
      else
        puts 'NO, NOT SINCE ' + year.to_s + '!'
      end
      next
    else
      puts 'NO, NOT SINCE ' + year.to_s + '!'
    end
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
  byes = 0
end
