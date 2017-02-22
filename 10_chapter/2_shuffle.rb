def shuffle(ar)
  return ar if ar.empty? or equal_elements?(ar)
  randomized = randomize(Array.new(ar))
  ar == randomized ? shuffle(ar) : randomized
end

def randomize(ar)
  return [] if ar.empty?
  rand_element = ar[rand(ar.length)]
  ar.delete_at(ar.find_index(rand_element))
  [rand_element] + randomize(ar)
end

def equal_elements?(ar)
  if ar[0] == ar[1]
    new_ar = ar[1..-1]
    (new_ar.length == 1 && true) || true == equal_elements?(new_ar)
  else
    false
  end
end
