require "spec_helper"

describe Dartboard do
  describe "VERSION" do
    it "should be at 0.1.1" do
      Dartboard::Version::STRING.should == "0.1.1"
    end

    it "should have major as 0" do
      Dartboard::Version::MAJOR.should == 0
    end

    it "should have minor as 1" do
      Dartboard::Version::MINOR.should == 1
    end

    it "should have tiny as 1" do
      Dartboard::Version::TINY.should == 1
    end
  end
end
