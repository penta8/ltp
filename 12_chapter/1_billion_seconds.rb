# Integer Integer Integer Integer Integer -> String
def one_billion(year, month, day, hours = 0, minutes = 0, seconds = 0)
  birthday = Time.gm(year, month, day, hours, minutes, seconds)
  one_billion = birthday + 1_000_000_000

  'Your one billion secods ' +
    (one_billion > Time.now ? 'will be in ' : 'was in ') +
    one_billion.to_s
end

puts one_billion(1983, 7, 28, 17, 56)
puts one_billion(2010, 11, 7)
