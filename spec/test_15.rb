require_relative 'spec_helper'

describe Barracks do 

  before :each do 
    @barracks = Barracks.new(80, 1000, 500, 500)
    @seige_engine = SeigeEngine.new(400,50)
  end

  describe "#can_train_seige_engine?" do
    it "returns true if there are enough resources to train a seige_engine" do
      # now check to see if one is trainable
      # can jump right to the test since barracks start off with enough gold and food to train multiple footmen
      expect(@barracks.can_train_seige_engine?).to be_truthy
    end

    it "returns false if there isn't enough food" do
      # Make the barracks believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      @barracks.should_receive(:food).and_return(2)
      expect(@barracks.can_train_seige_engine?).to be_falsey
    end

    it "returns false if there isn't enough gold" do
      # Make the barracks believe it only has 134 gold left, even though it starts with 1000
      # This is done by overwriting the `gold` getter method
      @barracks.should_receive(:gold).and_return(199)
      expect(@barracks.can_train_seige_engine?).to be_falsey
    end

    it "returns false if there isn't enough lumber" do
      # Make the barracks believe it only has 134 gold left, even though it starts with 1000
      # This is done by overwriting the `gold` getter method
      @barracks.should_receive(:lumber).and_return(59)
      expect(@barracks.can_train_seige_engine?).to be_falsey
    end
  end

  describe "#train_seige_engine" do
    it "does not train a seige_engine if there aren't enough resources" do
      @barracks.should_receive(:can_train_seige_engine?).and_return(false)
      expect(@barracks.train_seige_engine).to be_nil
    end
    it "trains a seige_engine if there are enough resources" do
      @barracks.should_receive(:can_train_seige_engine?).and_return(true)
      expect(@barracks.train_seige_engine).to be_a(SeigeEngine)
    end
  end

  describe "#damage" do
    it "has and knows its health_points" do
      expect(@barracks.health_points).to eq(500)
    end

    it "should reduce the barracks health_points based on unit's appropiate attack power" do
      # now check to see if one is trainable
      # can jump right to the test since barracks start off with enough gold and food to train multiple footmen
      @barracks.damage(@seige_engine)
      expect(@barracks.health_points).to eq(400)
    end
  end


end