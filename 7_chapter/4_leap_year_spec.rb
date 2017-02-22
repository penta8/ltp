require './4_leap_year'
require 'rspec'

describe "leap year" do
  it "checks 4 is a leap year" do
    leap_year?(4).should == true
  end

  it "checks 100 is a leap year" do
    leap_year?(100).should == false
  end

  it "checks 400 is a leap year" do
    leap_year?(400).should == true
  end
end

describe "returns the leap years in a range" do
  it "returns the leap years between 1 and 25" do
    leap_years(1, 25).should == [4, 8, 12, 16, 20, 24]
  end

  it "returns the leap years between 100 and 110" do
    leap_years(100, 110).should == [104, 108]
  end

  it "returns the leap years between 395 and 405" do
    leap_years(395, 405).should == [396, 400, 404]
  end
end
