require "minitest/autorun"
require "./old_school_roman"

describe "Old school romans" do
  it 'must transform 9 into VIIII' do
    to_roman(9).must_equal 'VIIII'
  end

  it 'must transform 999 to DCCCCLXXXXVIIII' do
    to_roman(999).must_equal 'DCCCCLXXXXVIIII'
  end

  it 'must transform 2009 to MMVIIII' do
    to_roman(2009).must_equal 'MMVIIII'
  end
end
