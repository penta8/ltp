require 'minitest/autorun'
require './3_dictionary_sort'

describe 'sort and array of words based in dictionary' do
  it 'sort an empty array' do
    dic_sort([]).must_be_empty
  end

  it 'sort an array of one element' do
    dic_sort(['hola']).must_equal ['hola']
  end

  it 'sort an array of lowercase words' do
    dic_sort(['hi', 'zoo', 'and', 'hello']).must_equal ['and', 'hello', 'hi', 'zoo']
  end

  it 'sort an array of lowercase and uppercase words' do
    dic_sort(['Hi', 'zoo', 'Eat', 'and']).must_equal ['and', 'Eat', 'Hi', 'zoo']
  end
end

describe 'get the minor word based in dictionary' do
  it 'gets the minor word from lowercase words' do
    minor_word(['hi', 'hello']).must_equal 'hello'
  end

  it 'gets the minor word from uppercase words' do
    minor_word(['Title', 'CRAZY']).must_equal 'CRAZY'
  end

  it 'gets the minor word from upper and lowercase words' do
    minor_word(['ITALY', 'argentina', 'Brazil', 'Mexico']).must_equal 'argentina'
  end

  it 'gets the minor word from one word' do
    minor_word(['hi']).must_equal 'hi'
  end
end
