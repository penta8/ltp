require 'minitest/autorun'
require './2_shuffle'

describe 'shuffle and array so its not equal' do
  it 'shuffle and array of same words' do
    shuffle(['hola', 'hola']).must_equal ['hola', 'hola']
  end

  it 'shuffle and empty array' do
    shuffle([]).must_be_empty
  end

  it 'shuffle and array with different elements' do
    shuffle(['hi', 5, 3]).wont_equal ['hi', 5, 3]
  end
end

describe 'verify if the array have all the same elements' do
  it 'verify 2 equal elements' do
    equal_elements?(['hola', 'hola']).must_equal true
  end

  it 'veryfy 2 equal and 1 different' do
    equal_elements?(['hi', 'cat', 'hi']).must_equal false
  end
end
