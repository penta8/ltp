require 'minitest/autorun'
require './modern_roman.rb'

describe "Transform integer to roman" do
  it 'must transform 4 to IV' do
    to_roman(4).must_equal 'IV'
  end

  it 'must transform 9 to IX' do
    to_roman(9).must_equal 'IX'
  end

  it 'must transform 199 to CXCIX' do
    to_roman(199).must_equal 'CXCIX'
  end

  it 'must transform 2999 to MMCMXCIX' do
    to_roman(2999).must_equal 'MMCMXCIX'
  end

  it 'must transform 577 to DLXXVII' do
    to_roman(577).must_equal 'DLXXVII'
  end
end
