require 'minitest/autorun'
require './4_birthday_helper'

describe 'it gets the birthday from a person in file birthdays.txt' do
  it 'get the Christopher Pine birthday ' do
    birthday_helper('Christopher Pine').must_equal 'Aug 3, 1976'
  end

  it 'get the Christopher Walken birthday ' do
    birthday_helper('Christopher Walken').must_equal 'Mar 31, 1943'
  end
end
