def shuffle(ar)
  return ar if ar.empty? or equal_elements?(ar)
  randomized = randomize(Array.new(ar))
  while ar == randomized
    randomized = randomize(Array.new(ar))
  end
  randomized
end

def randomize(ar)
  return [] if ar.empty?
  rand_element = ar[rand(ar.length)]
  ar.delete_at(ar.find_index(rand_element))
  [rand_element] + randomize(ar)
end

def equal_elements?(ar)
  if ar[0] == ar[1]
    if ar[1..-1].length == 1
      true
    else
      true == equal_elements?(ar[1..-1])
    end
  else
    false
  end
end
