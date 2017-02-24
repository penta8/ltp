# Integer -> String

def bottles_of_beer(bottles)
  if bottles.zero?
    'No more bottles of beer on the wall, no more bottles of beer.\n' \
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
  else
    message(bottles) + "\n\n" + bottles_of_beer(bottles - 1)
  end
end

def message(bottles)
  noun = bottles > 2 ? 'bottles' : 'bottle'
  bottles.to_s + " #{noun} of beer on the wall, " + bottles.to_s +
    " #{noun} of beer.\n" + 'Take one down and pass it around, ' +
    if bottles > 1
      (bottles - 1).to_s + " #{noun} of beer on the wall."
    else
      'no more bottles of beer on the wall.'
    end
end

puts bottles_of_beer(99)
