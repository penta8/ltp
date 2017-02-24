# Name of a person
def birthday_helper(name)
  birth_dates = {}
  File.open('birthdays.txt', 'r') do |f|
    f.readlines.each do |line|
      puts line
      person = line.split(',').map(&:strip)
      birth_dates[person[0]] = person[1] + ', ' + person[2]
    end
  end
  birth_dates[name]
end
