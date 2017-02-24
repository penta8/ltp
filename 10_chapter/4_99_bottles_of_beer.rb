def bottles_of_beer(bottles)
  if bottles == 0
    puts "No more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    return nil
  elsif bottles == 1
    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    bottles_of_beer(bottles - 1)
  else
    noun = bottles > 2 ? 'bottles' : 'bottle'
    puts bottles.to_s + " bottles of beer on the wall, " + bottles.to_s + " bottles of beer."
    puts "Take one down and pass it around, " + (bottles - 1).to_s + " #{noun} of beer on the wall."
    bottles_of_beer(bottles - 1)
  end
end

bottles_of_beer(99)
