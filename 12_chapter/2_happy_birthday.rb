# Integer Integer Integer -> String
# Get the year month and get SPANK!\n for each year the user has
def spank(year, month, day)
  birthday = Time.gm(year, month, day)
  years = (Time.now - birthday) / 60 / 60 / 24 / 365
  "SPANK!\n" * years
end

def main
  data = { year: nil, month: nil, day: nil }
  data.each do |k, v|
    print "Enter your #{k}: "
    data[k] = gets.chomp
  end

  puts spank(data[:year], data[:month], data[:day])
end

main
