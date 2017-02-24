require 'minitest/autorun'
require './3_roman_to_integer'

describe 'transform a roman number to integer' do
  it 'transform I to 1' do
    roman_to_integer('I').must_equal 1
  end

  it 'transform IV to 4' do
    roman_to_integer('IV').must_equal 4
  end

  it 'transform CMXCIX to 999' do
    roman_to_integer('CMXCIX').must_equal 999
  end

  it 'transform MMMCLXXXVIII to 3438' do
    roman_to_integer('MMMCDXXXVIII').must_equal 3438
  end
end

describe 'extract separates values' do
  it "separates MCMCCC into [:M, :CM, :C, :C, :C]" do
    separate_values('MCMCCC').must_equal [:M, :CM, :C, :C, :C]
  end

  it "separates DXXXVIII into [:D, :X, :X, :X, :V, :I, :I, :I]" do
    separate_values('DXXXVIII').must_equal [:D, :X, :X, :X, :V, :I, :I, :I]
  end

  it "separates MMCDXXIX into [:M, :M, :CD, :X, :X, :IX]" do
    separate_values('MMCDXXIX').must_equal [:M, :M, :CD, :X, :X, :IX]
  end
end
