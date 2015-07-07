require_relative 'spec_helper'

# All units can attack and receive damage, so that logic should actually be on the Unit class, not the Peasant class
# This way, you don't have to add damage and attack methods on all types of units

# After making the tests pass, consider what modifications you can make to the Peasant and Footman classes to take advantage of this inheritence

describe Barracks do

  before :each do
    @barracks = Barracks.new(80, 1000, 500)
    @footman = Footman.new(60, 10)
  end

  describe "#damage" do
    it "has and knows its health_points" do
      expect(@barracks.health_points).to eq(500)
    end

    it "should reduce the barracks health_points based on unit's appropiate attack power" do
      # now check to see if one is trainable
      # can jump right to the test since barracks start off with enough gold and food to train multiple footmen
      @barracks.damage(@footman)
      expect(@barracks.health_points).to eq(495)
    end

    # it "returns false if there isn't enough food" do
    #   # Make the barracks believe it only has 1 food item left, even though it starts with 80
    #   # This is done by overwriting the `food` getter method
    #   @barracks.should_receive(:food).and_return(1)
    #   expect(@barracks.can_train_footman?).to be_falsey
    # end

    # it "returns false if there isn't enough gold" do
    #   # Make the barracks believe it only has 134 gold left, even though it starts with 1000
    #   # This is done by overwriting the `gold` getter method
    #   @barracks.should_receive(:gold).and_return(134)
    #   expect(@barracks.can_train_footman?).to be_falsey
    # end
  end

  # describe "#train_footman" do
  #   it "does not train a footman if there aren't enough resources" do
  #     @barracks.should_receive(:can_train_footman?).and_return(false)
  #     expect(@barracks.train_footman).to be_nil
  #   end
  #   it "trains a footman if there are enough resources" do
  #     @barracks.should_receive(:can_train_footman?).and_return(true)
  #     expect(@barracks.train_footman).to be_a(Footman)
  #   end
  # end

end
