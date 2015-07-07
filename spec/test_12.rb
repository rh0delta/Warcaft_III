require_relative "spec_helper"

describe Unit do 

  before :each do 
    @unit = Unit.new(60,10)
  end

  describe "#dead?" do
    it "returns true if unit is dead" do

      @unit.should_receive(:health_points).and_return(0)
      # @unit.health_points
      expect(@unit.dead?).to be_truthy
    end

  end

end