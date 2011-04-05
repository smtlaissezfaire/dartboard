require "spec_helper"

describe Dartboard do
  describe "throwing" do
    before do
      @obj1 = Object.new
      @obj2 = Object.new
    end

    it "should pick a value" do
      val = Dartboard.throw({@obj1 => 50, @obj2 => 50})
      (val == @obj1 || val == @obj2).should be_true
    end

    it "should pick the only object with a value if the others are set to 0" do
      val = Dartboard.throw({@obj2 => 0, @obj1 => 20})
      val.should == @obj1
    end

    it "should round values" do
      Dartboard.throw({@obj1 => 0.66}).should == @obj1
    end

    it "should find nothing if values are less than 0.5" do
      Dartboard.throw({@obj1 => 0.44, @obj2 => 0.4}).should be_nil
    end
  end
end