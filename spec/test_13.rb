require_relative "spec_helper"

describe Unit do 
  before :each do
    @unit = Unit.new(60,10)
  end

  describe "#attack!" do
    it "should return nil if unit is dead" do
      enemy = Unit.new(60,10)
      @unit.should_receive(:health_points).and_return(0)
      expect(@unit.attack!(enemy)).to eq(nil)
    end

    it "should return nil if enemy is dead" do
      enemy = Unit.new(0,10)
      @unit.should_receive(:health_points).and_return(60)
      expect(@unit.attack!(enemy)).to eq(nil)
    end
  end
end