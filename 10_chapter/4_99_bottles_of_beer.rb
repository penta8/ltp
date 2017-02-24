# Integer -> String

def bottles_of_beer(bottles)
  if bottles == 0
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall."
  elsif bottles == 1
    "1 bottle of beer on the wall, 1 bottle of beer.\n" +
    "Take one down and pass it around, no more bottles of beer on the wall.\n\n" +
    bottles_of_beer(bottles - 1)
  else
    noun = bottles > 2 ? 'bottles' : 'bottle'
    bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer.\n" +
    "Take one down and pass it around, " + (bottles - 1).to_s + " #{noun} of beer on the wall.\n\n" +
    bottles_of_beer(bottles - 1)
  end
end

puts bottles_of_beer(99)
