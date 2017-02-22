require 'minitest/autorun'
require './1_sort'

describe 'sorts the words in an array' do
  it 'sort an array with mayuscules and minuscules' do
    sort(['hola', 'cat', 'dog', 'Perro']).must_equal ['Perro', 'cat', 'dog', 'hola']
  end

  it 'sort an array with repeated words' do
    sort(['zoo', 'cat', 'zoo', 'Monster']).must_equal ['Monster', 'cat', 'zoo', 'zoo']
  end

  it 'sort an empty array' do
    sort([]).must_equal []
  end
end
